/**
 *dogm_lcd_implementation.h
 *
 *Graphics LCD implementation for 128x64 pixel LCDs by STB for ErikZalm/Marlin
 *Demonstrator: http://www.reprap.org/wiki/STB_Electronics
 *License: http://opensource.org/licenses/BSD-3-Clause
 *
 *With the use of:
 *u8glib by Oliver Kraus
 *http://code.google.com/p/u8glib/
 *License: http://opensource.org/licenses/BSD-3-Clause
 */


#ifndef ULTRA_LCD_IMPLEMENTATION_DOGM_H
#define ULTRA_LCD_IMPLEMENTATION_DOGM_H

/**
* Implementation of the LCD display routines for a DOGM128 graphic display. These are common LCD 128x64 pixel graphic displays.
**/

#ifdef ULTIPANEL
#define BLEN_A 0
#define BLEN_B 1
#define BLEN_C 2
#define EN_A (1<<BLEN_A)
#define EN_B (1<<BLEN_B)
#define EN_C (1<<BLEN_C)
#define encrot0 0
#define encrot1 2
#define encrot2 3
#define encrot3 1
#define LCD_CLICKED (buttons&EN_C)
#endif

#include "Marlin.h"
#include "U8glib.h"
#include "DOGMbitmaps.h"
#include "dogm_font_data_marlin.h"
#include "ultralcd.h"
#include "ultralcd_st7920_u8glib_rrd.h"
#include "Configuration.h"

#ifdef LASER
#include "laserbitmaps.h"
#include "laser.h"
#endif

/* Russian language not supported yet, needs custom font

#if LANGUAGE_CHOICE == 6
#include "LiquidCrystalRus.h"
#define LCD_CLASS LiquidCrystalRus
#else
#include <LiquidCrystal.h>
#define LCD_CLASS LiquidCrystal
#endif
*/

// DOGM parameters (size in pixels)
#define DOG_CHAR_WIDTH			6
#define DOG_CHAR_HEIGHT			12
#define DOG_CHAR_WIDTH_LARGE	9
#define DOG_CHAR_HEIGHT_LARGE	18


#define START_ROW				0


/* Custom characters defined in font font_6x10_marlin.c */
#define LCD_STR_BEDTEMP     "\xFE"
#define LCD_STR_DEGREE      "\xB0"
#define LCD_STR_THERMOMETER "\xFF"
#define LCD_STR_UPLEVEL     "\xFB"
#define LCD_STR_REFRESH     "\xF8"
#define LCD_STR_FOLDER      "\xF9"
#define LCD_STR_FEEDRATE    "\xFD"
#define LCD_STR_CLOCK       "\xFC"
#define LCD_STR_ARROW_RIGHT "\xFA"

#define FONT_STATUSMENU	u8g_font_6x9

int lcd_contrast;

// LCD selection
#ifdef U8GLIB_ST7920
//U8GLIB_ST7920_128X64_RRD u8g(0,0,0);
U8GLIB_ST7920_128X64_RRD u8g(0);
#elif defined(MAKRPANEL)
// The MaKrPanel display, ST7565 controller as well
U8GLIB_NHD_C12864 u8g(DOGLCD_CS, DOGLCD_A0);
#else
// for regular DOGM128 display with HW-SPI
U8GLIB_DOGM128 u8g(DOGLCD_CS, DOGLCD_A0);	// HW-SPI Com: CS, A0
#endif

static void lcd_printPGM (const char* str );

static void lcd_implementation_init()
{
#ifdef LCD_PIN_BL
	pinMode(LCD_PIN_BL, OUTPUT);	// Enable LCD backlight
	digitalWrite(LCD_PIN_BL, HIGH);
#endif

        u8g.setContrast(lcd_contrast);	
	//  Uncomment this if you have the first generation (V1.10) of STBs board
	//  pinMode(17, OUTPUT);	// Enable LCD backlight
	//  digitalWrite(17, HIGH);
	
	u8g.firstPage();
	do {
		u8g.setFont(u8g_font_6x10_marlin);
		u8g.setColorIndex(1);
		u8g.drawBox (0, 0, u8g.getWidth(), u8g.getHeight());
		u8g.setColorIndex(1);
	   } while( u8g.nextPage() );

#ifdef LCD_SCREEN_ROT_90
	u8g.setRot90();	// Rotate screen by 90°
#endif

#ifdef LCD_SCREEN_ROT_180
	u8g.setRot180();	// Rotate screen by 180°
#endif

#ifdef LCD_SCREEN_ROT_270
	u8g.setRot270();	// Rotate screen by 270°
#endif
   
	u8g.firstPage();
        
	do {
            // RepRap init bmp
            u8g.drawBitmapP(0,3,START_BMPBYTEWIDTH,START_BMPHEIGHT,start_bmp);
            
            // Welcome message
            u8g.setFont(u8g_font_7x13B);
            u8g.drawStr(42,14,CUSTOM_MENDEL_NAME);         
            u8g.setFont(u8g_font_5x8);
#ifdef __DEBUG
            u8g.drawStr(50,22,"<<< DEBUG >>>");
#endif            
            u8g.drawStr(50,35,FIRMWARE_STRING);
            u8g.drawStr(52,42,VERSION_STRING);

            u8g.setFont(u8g_font_6x9);
            u8g.drawStr(43,60,BY_STRING);
        } while( u8g.nextPage() );
}

static void lcd_implementation_status_screen()
{
    extern float    feedrate;
    
#ifdef  LASER_JTECHPHOT   // Laser voltage and current
    extern float   current_laser_current; // current at laser
#endif
    
    u8g.setColorIndex(1);	// black on white
    
// LASER  **********************************************************************
    
    //Icons of warning laser
    u8g.drawBitmapP(6,4, LASERENABLE_BYTEWIDTH, LASERENABLE_HEIGHT, laserenable_bmp);
    u8g.drawBitmapP(96,4, LASERENABLE_BYTEWIDTH, LASERENABLE_HEIGHT, laserenable_bmp);
    
#define     LCD_LASER_BOX_X     38       //Horizontal position of the laser Box    
    
    u8g.setFont(FONT_STATUSMENU);
    u8g.setColorIndex(1);
    
    u8g.drawFrame(LCD_LASER_BOX_X, 0,51,28); // draw box
            
    if (laser.firing) 
    {
        u8g.drawBitmapP(LCD_LASER_BOX_X + 4, 8, ICON_BYTEWIDTH, ICON_HEIGHT, laseron_bmp);
        
        //Laser Power %
        u8g.setPrintPos(LCD_LASER_BOX_X + 22, 9);
        u8g.print(itostr3(laser.intensity));
        lcd_printPGM(PSTR("%"));   
         
    } else {
        u8g.drawBitmapP(LCD_LASER_BOX_X + 4, 8, ICON_BYTEWIDTH, ICON_HEIGHT, laseroff_bmp);
        
        //Laser Power %
        u8g.setPrintPos(LCD_LASER_BOX_X + 22, 9);      
        lcd_printPGM(PSTR("---%"));
    }
    
#ifdef  LASER_JTECHPHOT   // Laser voltage and current
    //Laser Current
    u8g.setPrintPos(LCD_LASER_BOX_X + 18, 18);
    u8g.print(itostr12(int(current_laser_current*100)));
    lcd_printPGM(PSTR("A")); 
#endif  
        
//Laser Temperature - T0
    u8g.setPrintPos(LCD_LASER_BOX_X + 25, 26);
    u8g.print(itostr2(int(degHotend(0) + 0.5)));
    lcd_printPGM(PSTR(LCD_STR_DEGREE));
    
    
//SD Card Symbol  **************************************************************    
#ifdef SDSUPPORT
    
    u8g.drawBox(42,42,8,7);
    u8g.drawBox(50,44,2,5);
    u8g.drawFrame(42,49,10,4);
    u8g.drawPixel(50,43);
    
    // SD Card Progress bar and clock
    u8g.setFont(FONT_STATUSMENU);
    u8g.drawFrame(54,49,73,4);
    
    if (IS_SD_PRINTING)
    {
        // Progress bar
        u8g.drawBox(55,50, (unsigned int)( (71 * card.percentDone())/100) ,2);
    }
    else {
        // do nothing
    }
    
//TIME
    u8g.setPrintPos(62,47);
    if(starttime != 0)
    {
        uint16_t time = millis()/60000 - starttime/60000;
        u8g.print(itostr2(time/60));
        u8g.print(':');
        u8g.print(itostr2(time%60));
    }else{
        lcd_printPGM(PSTR("--:--"));
    }

//FEEDRATE
    u8g.setPrintPos(104,47);
    u8g.print(itostr4((int)feedrate));
    
#endif
 

 // X, Y, Z-Coordinates     ***************************************************
    u8g.setFont(FONT_STATUSMENU);
    u8g.drawBox(0,29,128,10);
    u8g.setColorIndex(0);	// white on black
    u8g.setPrintPos(2,37);
    u8g.print("X");
    u8g.drawPixel(8,33);
    u8g.drawPixel(8,35);
    u8g.setPrintPos(10,37);
    u8g.print(ftostr31ns(current_position[X_AXIS]));
    u8g.setPrintPos(43,37);
    lcd_printPGM(PSTR("Y"));
    u8g.drawPixel(49,33);
    u8g.drawPixel(49,35);
    u8g.setPrintPos(51,37);
    u8g.print(ftostr31ns(current_position[Y_AXIS]));
    u8g.setPrintPos(83,37);
    u8g.print("Z");
    u8g.drawPixel(89,33);
    u8g.drawPixel(89,35);
    u8g.setPrintPos(91,37);
    u8g.print(ftostr31(current_position[Z_AXIS]));
    u8g.setColorIndex(1);	// black on white
 
 // Feedrate  ******************************************************************
    u8g.setFont(u8g_font_6x10_marlin);
    u8g.setPrintPos(3,49);
    u8g.print(LCD_STR_FEEDRATE[0]);
    u8g.setFont(FONT_STATUSMENU);
    u8g.setPrintPos(12,48);
    u8g.print(itostr3(feedmultiply));
    u8g.print('%');

// Status line *****************************************************************
    u8g.setFont(FONT_STATUSMENU);
    u8g.setPrintPos(0,61);
    u8g.print(lcd_status_message);

}

static void lcd_implementation_clear()
{
// NO NEED TO IMPLEMENT LIKE SO. Picture loop automatically clears the display.
//
// Check this article: http://arduino.cc/forum/index.php?topic=91395.25;wap2
//
//	u8g.firstPage();
//	do {	
//			u8g.setColorIndex(0);
//			u8g.drawBox (0, 0, u8g.getWidth(), u8g.getHeight());
//			u8g.setColorIndex(1);
//		} while( u8g.nextPage() );
}

/* Arduino < 1.0.0 is missing a function to print PROGMEM strings, so we need to implement our own */
static void lcd_printPGM(const char* str)
{
    char c;
    while((c = pgm_read_byte(str++)) != '\0')
    {
			u8g.print(c);
    }
}

static void lcd_implementation_drawmenu_generic(uint8_t row, const char* pstr, char pre_char, char post_char)
{
    char c;
    
    uint8_t n = LCD_WIDTH - 1 - 2;
		
		if ((pre_char == '>') || (pre_char == LCD_STR_UPLEVEL[0] ))
		   {
			u8g.setColorIndex(1);		// black on white
			u8g.drawBox (0, row*DOG_CHAR_HEIGHT + 3, 128, DOG_CHAR_HEIGHT);
			u8g.setColorIndex(0);		// following text must be white on black
		   } else u8g.setColorIndex(1); // unmarked text is black on white
		
		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		if (pre_char != '>') u8g.print(pre_char); else u8g.print(' ');	// Row selector is obsolete


    while( (c = pgm_read_byte(pstr)) != '\0' )
    {
		u8g.print(c);
        pstr++;
        n--;
    }
    while(n--){
					u8g.print(' ');
		}
	   
		u8g.print(post_char);
		u8g.print(' ');
		u8g.setColorIndex(1);		// restore settings to black on white
}

static void lcd_implementation_drawmenu_setting_edit_generic(uint8_t row, const char* pstr, char pre_char, char* data)
{
    static unsigned int fkt_cnt = 0;
	char c;
    uint8_t n = LCD_WIDTH - 1 - 2 - strlen(data);

    u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
    u8g.print(pre_char);
	
    while( (c = pgm_read_byte(pstr)) != '\0' )
    {
			u8g.print(c);
		
        pstr++;
        n--;
    }
	
    u8g.print(':');

    while(n--){
        u8g.print(' ');
    }

    u8g.print(data);
}

static void lcd_implementation_drawmenu_setting_edit_generic_P(uint8_t row, const char* pstr, char pre_char, const char* data)
{
    char c;
    uint8_t n= LCD_WIDTH - 1 - 2 - strlen_P(data);

		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		u8g.print(pre_char);
	
    while( (c = pgm_read_byte(pstr)) != '\0' )
    {
			u8g.print(c);
		
        pstr++;
        n--;
    }

		u8g.print(':');
	
    while(n--){
					u8g.print(' ');
			  }

		lcd_printPGM(data);
}

#define lcd_implementation_drawmenu_setting_edit_int3_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', itostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_int3(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', itostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float3_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float3(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float32_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr32(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float32(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr32(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float5_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float5(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float52_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr52(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float52(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr52(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float51_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr51(*(data)))
#define lcd_implementation_drawmenu_setting_edit_float51(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr51(*(data)))
#define lcd_implementation_drawmenu_setting_edit_long5_selected(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_long5(row, pstr, pstr2, data, minValue, maxValue) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_bool_selected(row, pstr, pstr2, data) lcd_implementation_drawmenu_setting_edit_generic_P(row, pstr, '>', (*(data))?PSTR(MSG_ON):PSTR(MSG_OFF))
#define lcd_implementation_drawmenu_setting_edit_bool(row, pstr, pstr2, data) lcd_implementation_drawmenu_setting_edit_generic_P(row, pstr, ' ', (*(data))?PSTR(MSG_ON):PSTR(MSG_OFF))

//Add version for callback functions
#define lcd_implementation_drawmenu_setting_edit_callback_int3_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', itostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_int3(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', itostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float3_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float3(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr3(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float32_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr32(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float32(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr32(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float5_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float5(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float52_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr52(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float52(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr52(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float51_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr51(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_float51(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr51(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_long5_selected(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, '>', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_long5(row, pstr, pstr2, data, minValue, maxValue, callback) lcd_implementation_drawmenu_setting_edit_generic(row, pstr, ' ', ftostr5(*(data)))
#define lcd_implementation_drawmenu_setting_edit_callback_bool_selected(row, pstr, pstr2, data, callback) lcd_implementation_drawmenu_setting_edit_generic_P(row, pstr, '>', (*(data))?PSTR(MSG_ON):PSTR(MSG_OFF))
#define lcd_implementation_drawmenu_setting_edit_callback_bool(row, pstr, pstr2, data, callback) lcd_implementation_drawmenu_setting_edit_generic_P(row, pstr, ' ', (*(data))?PSTR(MSG_ON):PSTR(MSG_OFF))

void lcd_implementation_drawedit(const char* pstr, char* value)
{
    u8g.setPrintPos( 2 , (u8g.getHeight() - 1 - DOG_CHAR_HEIGHT_LARGE) - (1 * DOG_CHAR_HEIGHT_LARGE) - START_ROW );
    u8g.setFont(u8g_font_8x13);
    lcd_printPGM(pstr);
    u8g.setPrintPos( 5 , (u8g.getHeight() - 1 - DOG_CHAR_HEIGHT_LARGE) - (1 * DOG_CHAR_HEIGHT_LARGE) - START_ROW + 13);
    u8g.print("Value: ");
    u8g.print(value);
}

static void lcd_implementation_drawmenu_sdfile_selected(uint8_t row, const char* pstr, const char* filename, char* longFilename)
{
    char c;
    uint8_t n = LCD_WIDTH - 1;

    if (longFilename[0] != '\0')
    {
        filename = longFilename;
        longFilename[LCD_WIDTH-1] = '\0';
    }

		u8g.setColorIndex(1);		// black on white
		u8g.drawBox (0, row*DOG_CHAR_HEIGHT + 3, 128, DOG_CHAR_HEIGHT);
		u8g.setColorIndex(0);		// following text must be white on black
		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		u8g.print(' ');	// Indent by 1 char
	   
    while((c = *filename) != '\0')
    {
		u8g.print(c);
        filename++;
        n--;
    }
    while(n--){
					u8g.print(' ');
			   }
	u8g.setColorIndex(1);		// black on white
}

static void lcd_implementation_drawmenu_sdfile(uint8_t row, const char* pstr, const char* filename, char* longFilename)
{
    char c;
    uint8_t n = LCD_WIDTH - 1;

    if (longFilename[0] != '\0')
    {
        filename = longFilename;
        longFilename[LCD_WIDTH-1] = '\0';
    }

		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		u8g.print(' ');
		
while((c = *filename) != '\0')
    {
			u8g.print(c);
		
        filename++;
        n--;
    }
    while(n--){
					u8g.print(' ');
			   }

}

static void lcd_implementation_drawmenu_sddirectory_selected(uint8_t row, const char* pstr, const char* filename, char* longFilename)
{
    char c;
    uint8_t n = LCD_WIDTH - 2;
		
    if (longFilename[0] != '\0')
    {
        filename = longFilename;
        longFilename[LCD_WIDTH-2] = '\0';
    }
		u8g.setColorIndex(1);		// black on white
		u8g.drawBox (0, row*DOG_CHAR_HEIGHT + 3, 128, DOG_CHAR_HEIGHT);
		u8g.setColorIndex(0);		// following text must be white on black
		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		u8g.print(' ');	// Indent by 1 char
		u8g.print(LCD_STR_FOLDER[0]);		
	   
    while((c = *filename) != '\0')
    {
			u8g.print(c);
		
        filename++;
        n--;
    }
    while(n--){
					u8g.print(' ');
			   }
	u8g.setColorIndex(1);		// black on white
}

static void lcd_implementation_drawmenu_sddirectory(uint8_t row, const char* pstr, const char* filename, char* longFilename)
{
    char c;
    uint8_t n = LCD_WIDTH - 2;

    if (longFilename[0] != '\0')
    {
        filename = longFilename;
        longFilename[LCD_WIDTH-2] = '\0';
    }

		u8g.setPrintPos(0 * DOG_CHAR_WIDTH, (row + 1) * DOG_CHAR_HEIGHT);
		u8g.print(' ');
		u8g.print(LCD_STR_FOLDER[0]);

    while((c = *filename) != '\0')
    {
			u8g.print(c);
		
        filename++;
        n--;
    }
    while(n--){
					u8g.print(' ');
			   }
}

#define lcd_implementation_drawmenu_back_selected(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, LCD_STR_UPLEVEL[0], LCD_STR_UPLEVEL[0])
#define lcd_implementation_drawmenu_back(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, ' ', LCD_STR_UPLEVEL[0])
#define lcd_implementation_drawmenu_submenu_selected(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, '>', LCD_STR_ARROW_RIGHT[0])
#define lcd_implementation_drawmenu_submenu(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, ' ', LCD_STR_ARROW_RIGHT[0])
#define lcd_implementation_drawmenu_gcode_selected(row, pstr, gcode) lcd_implementation_drawmenu_generic(row, pstr, '>', ' ')
#define lcd_implementation_drawmenu_gcode(row, pstr, gcode) lcd_implementation_drawmenu_generic(row, pstr, ' ', ' ')
#define lcd_implementation_drawmenu_function_selected(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, '>', ' ')
#define lcd_implementation_drawmenu_function(row, pstr, data) lcd_implementation_drawmenu_generic(row, pstr, ' ', ' ')

static void lcd_implementation_quick_feedback()
{

#if BEEPER > -1
    SET_OUTPUT(BEEPER);
    for(int8_t i=0;i<10;i++)
    {
		WRITE(BEEPER,HIGH);
		delay(3);
		WRITE(BEEPER,LOW);
		delay(3);
    }
#endif
}
#endif//ULTRA_LCD_IMPLEMENTATION_DOGM_H



#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as

# Macros
CND_PLATFORM=Arduino-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Base64.o \
	${OBJECTDIR}/ConfigurationStore.o \
	${OBJECTDIR}/LiquidCrystalRus.o \
	${OBJECTDIR}/MarlinSerial.o \
	${OBJECTDIR}/Marlin_main.o \
	${OBJECTDIR}/Sd2Card.o \
	${OBJECTDIR}/SdBaseFile.o \
	${OBJECTDIR}/SdFatUtil.o \
	${OBJECTDIR}/SdFile.o \
	${OBJECTDIR}/SdVolume.o \
	${OBJECTDIR}/Servo.o \
	${OBJECTDIR}/U8glib.o \
	${OBJECTDIR}/cardreader.o \
	${OBJECTDIR}/laser.o \
	${OBJECTDIR}/motion_control.o \
	${OBJECTDIR}/planner.o \
	${OBJECTDIR}/stepper.o \
	${OBJECTDIR}/temperature.o \
	${OBJECTDIR}/ultralcd.o \
	${OBJECTDIR}/utility/chessengine.o \
	${OBJECTDIR}/utility/u8g_bitmap.o \
	${OBJECTDIR}/utility/u8g_circle.o \
	${OBJECTDIR}/utility/u8g_clip.o \
	${OBJECTDIR}/utility/u8g_com_api.o \
	${OBJECTDIR}/utility/u8g_com_api_16gr.o \
	${OBJECTDIR}/utility/u8g_com_arduino_attiny85_hw_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_common.o \
	${OBJECTDIR}/utility/u8g_com_arduino_fast_parallel.o \
	${OBJECTDIR}/utility/u8g_com_arduino_hw_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_hw_usart_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_no_en_parallel.o \
	${OBJECTDIR}/utility/u8g_com_arduino_parallel.o \
	${OBJECTDIR}/utility/u8g_com_arduino_port_d_wr.o \
	${OBJECTDIR}/utility/u8g_com_arduino_ssd_i2c.o \
	${OBJECTDIR}/utility/u8g_com_arduino_st7920_custom.o \
	${OBJECTDIR}/utility/u8g_com_arduino_st7920_hw_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_st7920_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_std_sw_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_sw_spi.o \
	${OBJECTDIR}/utility/u8g_com_arduino_t6963.o \
	${OBJECTDIR}/utility/u8g_com_atmega_hw_spi.o \
	${OBJECTDIR}/utility/u8g_com_atmega_parallel.o \
	${OBJECTDIR}/utility/u8g_com_atmega_st7920_hw_spi.o \
	${OBJECTDIR}/utility/u8g_com_atmega_st7920_spi.o \
	${OBJECTDIR}/utility/u8g_com_atmega_sw_spi.o \
	${OBJECTDIR}/utility/u8g_com_i2c.o \
	${OBJECTDIR}/utility/u8g_com_io.o \
	${OBJECTDIR}/utility/u8g_com_null.o \
	${OBJECTDIR}/utility/u8g_cursor.o \
	${OBJECTDIR}/utility/u8g_delay.o \
	${OBJECTDIR}/utility/u8g_dev_a2_micro_printer.o \
	${OBJECTDIR}/utility/u8g_dev_flipdisc_2x7.o \
	${OBJECTDIR}/utility/u8g_dev_gprof.o \
	${OBJECTDIR}/utility/u8g_dev_ht1632.o \
	${OBJECTDIR}/utility/u8g_dev_ili9325d_320x240.o \
	${OBJECTDIR}/utility/u8g_dev_ks0108_128x64.o \
	${OBJECTDIR}/utility/u8g_dev_lc7981_160x80.o \
	${OBJECTDIR}/utility/u8g_dev_lc7981_240x128.o \
	${OBJECTDIR}/utility/u8g_dev_lc7981_240x64.o \
	${OBJECTDIR}/utility/u8g_dev_lc7981_320x64.o \
	${OBJECTDIR}/utility/u8g_dev_null.o \
	${OBJECTDIR}/utility/u8g_dev_pcd8544_84x48.o \
	${OBJECTDIR}/utility/u8g_dev_pcf8812_96x65.o \
	${OBJECTDIR}/utility/u8g_dev_sbn1661_122x32.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1306_128x32.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1306_128x64.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1309_128x64.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_bw.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_gr.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw_new.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr_new.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1327_96x96_gr.o \
	${OBJECTDIR}/utility/u8g_dev_ssd1351_128x128.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_64128n.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_dogm128.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_dogm132.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_lm6059.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_lm6063.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12832.o \
	${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12864.o \
	${OBJECTDIR}/utility/u8g_dev_st7687_c144mvgd.o \
	${OBJECTDIR}/utility/u8g_dev_st7920_128x64.o \
	${OBJECTDIR}/utility/u8g_dev_st7920_192x32.o \
	${OBJECTDIR}/utility/u8g_dev_st7920_202x32.o \
	${OBJECTDIR}/utility/u8g_dev_t6963_128x64.o \
	${OBJECTDIR}/utility/u8g_dev_t6963_240x128.o \
	${OBJECTDIR}/utility/u8g_dev_t6963_240x64.o \
	${OBJECTDIR}/utility/u8g_dev_tls8204_84x48.o \
	${OBJECTDIR}/utility/u8g_dev_uc1601_c128032.o \
	${OBJECTDIR}/utility/u8g_dev_uc1610_dogxl160.o \
	${OBJECTDIR}/utility/u8g_dev_uc1701_dogs102.o \
	${OBJECTDIR}/utility/u8g_dev_uc1701_mini12864.o \
	${OBJECTDIR}/utility/u8g_ellipse.o \
	${OBJECTDIR}/utility/u8g_font.o \
	${OBJECTDIR}/utility/u8g_font_data.o \
	${OBJECTDIR}/utility/u8g_line.o \
	${OBJECTDIR}/utility/u8g_ll_api.o \
	${OBJECTDIR}/utility/u8g_page.o \
	${OBJECTDIR}/utility/u8g_pb.o \
	${OBJECTDIR}/utility/u8g_pb14v1.o \
	${OBJECTDIR}/utility/u8g_pb16h1.o \
	${OBJECTDIR}/utility/u8g_pb16h2.o \
	${OBJECTDIR}/utility/u8g_pb16v1.o \
	${OBJECTDIR}/utility/u8g_pb16v2.o \
	${OBJECTDIR}/utility/u8g_pb32h1.o \
	${OBJECTDIR}/utility/u8g_pb8h1.o \
	${OBJECTDIR}/utility/u8g_pb8h1f.o \
	${OBJECTDIR}/utility/u8g_pb8h2.o \
	${OBJECTDIR}/utility/u8g_pb8h8.o \
	${OBJECTDIR}/utility/u8g_pb8v1.o \
	${OBJECTDIR}/utility/u8g_pb8v2.o \
	${OBJECTDIR}/utility/u8g_pbxh16.o \
	${OBJECTDIR}/utility/u8g_pbxh24.o \
	${OBJECTDIR}/utility/u8g_rect.o \
	${OBJECTDIR}/utility/u8g_rot.o \
	${OBJECTDIR}/utility/u8g_scale.o \
	${OBJECTDIR}/utility/u8g_state.o \
	${OBJECTDIR}/utility/u8g_u16toa.o \
	${OBJECTDIR}/utility/u8g_u8toa.o \
	${OBJECTDIR}/utility/u8g_virtual_screen.o \
	${OBJECTDIR}/watchdog.o


# C Compiler Flags
CFLAGS=${FLAGS_GCC}

# CC Compiler Flags
CCFLAGS=${FLAGS_GPP}
CXXFLAGS=${FLAGS_GPP}

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/marlin.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/marlin.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	avr-gcc -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/marlin ${OBJECTFILES} ${LDLIBSOPTIONS} ${FLAGS_LINKER}

${OBJECTDIR}/Base64.o: Base64.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Base64.o Base64.cpp

${OBJECTDIR}/ConfigurationStore.o: ConfigurationStore.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ConfigurationStore.o ConfigurationStore.cpp

${OBJECTDIR}/LiquidCrystalRus.o: LiquidCrystalRus.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LiquidCrystalRus.o LiquidCrystalRus.cpp

${OBJECTDIR}/MarlinSerial.o: MarlinSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MarlinSerial.o MarlinSerial.cpp

${OBJECTDIR}/Marlin_main.o: Marlin_main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Marlin_main.o Marlin_main.cpp

${OBJECTDIR}/Sd2Card.o: Sd2Card.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Sd2Card.o Sd2Card.cpp

${OBJECTDIR}/SdBaseFile.o: SdBaseFile.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SdBaseFile.o SdBaseFile.cpp

${OBJECTDIR}/SdFatUtil.o: SdFatUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SdFatUtil.o SdFatUtil.cpp

${OBJECTDIR}/SdFile.o: SdFile.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SdFile.o SdFile.cpp

${OBJECTDIR}/SdVolume.o: SdVolume.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SdVolume.o SdVolume.cpp

${OBJECTDIR}/Servo.o: Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Servo.o Servo.cpp

${OBJECTDIR}/U8glib.o: U8glib.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/U8glib.o U8glib.cpp

${OBJECTDIR}/cardreader.o: cardreader.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cardreader.o cardreader.cpp

${OBJECTDIR}/laser.o: laser.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/laser.o laser.cpp

${OBJECTDIR}/motion_control.o: motion_control.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/motion_control.o motion_control.cpp

${OBJECTDIR}/planner.o: planner.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/planner.o planner.cpp

${OBJECTDIR}/stepper.o: stepper.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/stepper.o stepper.cpp

${OBJECTDIR}/temperature.o: temperature.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/temperature.o temperature.cpp

${OBJECTDIR}/ultralcd.o: ultralcd.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ultralcd.o ultralcd.cpp

${OBJECTDIR}/utility/chessengine.o: utility/chessengine.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/chessengine.o utility/chessengine.c

${OBJECTDIR}/utility/u8g_bitmap.o: utility/u8g_bitmap.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_bitmap.o utility/u8g_bitmap.c

${OBJECTDIR}/utility/u8g_circle.o: utility/u8g_circle.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_circle.o utility/u8g_circle.c

${OBJECTDIR}/utility/u8g_clip.o: utility/u8g_clip.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_clip.o utility/u8g_clip.c

${OBJECTDIR}/utility/u8g_com_api.o: utility/u8g_com_api.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_api.o utility/u8g_com_api.c

${OBJECTDIR}/utility/u8g_com_api_16gr.o: utility/u8g_com_api_16gr.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_api_16gr.o utility/u8g_com_api_16gr.c

${OBJECTDIR}/utility/u8g_com_arduino_attiny85_hw_spi.o: utility/u8g_com_arduino_attiny85_hw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_attiny85_hw_spi.o utility/u8g_com_arduino_attiny85_hw_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_common.o: utility/u8g_com_arduino_common.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_common.o utility/u8g_com_arduino_common.c

${OBJECTDIR}/utility/u8g_com_arduino_fast_parallel.o: utility/u8g_com_arduino_fast_parallel.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_fast_parallel.o utility/u8g_com_arduino_fast_parallel.c

${OBJECTDIR}/utility/u8g_com_arduino_hw_spi.o: utility/u8g_com_arduino_hw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_hw_spi.o utility/u8g_com_arduino_hw_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_hw_usart_spi.o: utility/u8g_com_arduino_hw_usart_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_hw_usart_spi.o utility/u8g_com_arduino_hw_usart_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_no_en_parallel.o: utility/u8g_com_arduino_no_en_parallel.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_no_en_parallel.o utility/u8g_com_arduino_no_en_parallel.c

${OBJECTDIR}/utility/u8g_com_arduino_parallel.o: utility/u8g_com_arduino_parallel.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_parallel.o utility/u8g_com_arduino_parallel.c

${OBJECTDIR}/utility/u8g_com_arduino_port_d_wr.o: utility/u8g_com_arduino_port_d_wr.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_port_d_wr.o utility/u8g_com_arduino_port_d_wr.c

${OBJECTDIR}/utility/u8g_com_arduino_ssd_i2c.o: utility/u8g_com_arduino_ssd_i2c.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_ssd_i2c.o utility/u8g_com_arduino_ssd_i2c.c

${OBJECTDIR}/utility/u8g_com_arduino_st7920_custom.o: utility/u8g_com_arduino_st7920_custom.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_st7920_custom.o utility/u8g_com_arduino_st7920_custom.c

${OBJECTDIR}/utility/u8g_com_arduino_st7920_hw_spi.o: utility/u8g_com_arduino_st7920_hw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_st7920_hw_spi.o utility/u8g_com_arduino_st7920_hw_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_st7920_spi.o: utility/u8g_com_arduino_st7920_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_st7920_spi.o utility/u8g_com_arduino_st7920_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_std_sw_spi.o: utility/u8g_com_arduino_std_sw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_std_sw_spi.o utility/u8g_com_arduino_std_sw_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_sw_spi.o: utility/u8g_com_arduino_sw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_sw_spi.o utility/u8g_com_arduino_sw_spi.c

${OBJECTDIR}/utility/u8g_com_arduino_t6963.o: utility/u8g_com_arduino_t6963.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_arduino_t6963.o utility/u8g_com_arduino_t6963.c

${OBJECTDIR}/utility/u8g_com_atmega_hw_spi.o: utility/u8g_com_atmega_hw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_atmega_hw_spi.o utility/u8g_com_atmega_hw_spi.c

${OBJECTDIR}/utility/u8g_com_atmega_parallel.o: utility/u8g_com_atmega_parallel.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_atmega_parallel.o utility/u8g_com_atmega_parallel.c

${OBJECTDIR}/utility/u8g_com_atmega_st7920_hw_spi.o: utility/u8g_com_atmega_st7920_hw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_atmega_st7920_hw_spi.o utility/u8g_com_atmega_st7920_hw_spi.c

${OBJECTDIR}/utility/u8g_com_atmega_st7920_spi.o: utility/u8g_com_atmega_st7920_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_atmega_st7920_spi.o utility/u8g_com_atmega_st7920_spi.c

${OBJECTDIR}/utility/u8g_com_atmega_sw_spi.o: utility/u8g_com_atmega_sw_spi.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_atmega_sw_spi.o utility/u8g_com_atmega_sw_spi.c

${OBJECTDIR}/utility/u8g_com_i2c.o: utility/u8g_com_i2c.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_i2c.o utility/u8g_com_i2c.c

${OBJECTDIR}/utility/u8g_com_io.o: utility/u8g_com_io.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_io.o utility/u8g_com_io.c

${OBJECTDIR}/utility/u8g_com_null.o: utility/u8g_com_null.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_com_null.o utility/u8g_com_null.c

${OBJECTDIR}/utility/u8g_cursor.o: utility/u8g_cursor.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_cursor.o utility/u8g_cursor.c

${OBJECTDIR}/utility/u8g_delay.o: utility/u8g_delay.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_delay.o utility/u8g_delay.c

${OBJECTDIR}/utility/u8g_dev_a2_micro_printer.o: utility/u8g_dev_a2_micro_printer.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_a2_micro_printer.o utility/u8g_dev_a2_micro_printer.c

${OBJECTDIR}/utility/u8g_dev_flipdisc_2x7.o: utility/u8g_dev_flipdisc_2x7.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_flipdisc_2x7.o utility/u8g_dev_flipdisc_2x7.c

${OBJECTDIR}/utility/u8g_dev_gprof.o: utility/u8g_dev_gprof.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_gprof.o utility/u8g_dev_gprof.c

${OBJECTDIR}/utility/u8g_dev_ht1632.o: utility/u8g_dev_ht1632.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ht1632.o utility/u8g_dev_ht1632.c

${OBJECTDIR}/utility/u8g_dev_ili9325d_320x240.o: utility/u8g_dev_ili9325d_320x240.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ili9325d_320x240.o utility/u8g_dev_ili9325d_320x240.c

${OBJECTDIR}/utility/u8g_dev_ks0108_128x64.o: utility/u8g_dev_ks0108_128x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ks0108_128x64.o utility/u8g_dev_ks0108_128x64.c

${OBJECTDIR}/utility/u8g_dev_lc7981_160x80.o: utility/u8g_dev_lc7981_160x80.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_lc7981_160x80.o utility/u8g_dev_lc7981_160x80.c

${OBJECTDIR}/utility/u8g_dev_lc7981_240x128.o: utility/u8g_dev_lc7981_240x128.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_lc7981_240x128.o utility/u8g_dev_lc7981_240x128.c

${OBJECTDIR}/utility/u8g_dev_lc7981_240x64.o: utility/u8g_dev_lc7981_240x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_lc7981_240x64.o utility/u8g_dev_lc7981_240x64.c

${OBJECTDIR}/utility/u8g_dev_lc7981_320x64.o: utility/u8g_dev_lc7981_320x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_lc7981_320x64.o utility/u8g_dev_lc7981_320x64.c

${OBJECTDIR}/utility/u8g_dev_null.o: utility/u8g_dev_null.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_null.o utility/u8g_dev_null.c

${OBJECTDIR}/utility/u8g_dev_pcd8544_84x48.o: utility/u8g_dev_pcd8544_84x48.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_pcd8544_84x48.o utility/u8g_dev_pcd8544_84x48.c

${OBJECTDIR}/utility/u8g_dev_pcf8812_96x65.o: utility/u8g_dev_pcf8812_96x65.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_pcf8812_96x65.o utility/u8g_dev_pcf8812_96x65.c

${OBJECTDIR}/utility/u8g_dev_sbn1661_122x32.o: utility/u8g_dev_sbn1661_122x32.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_sbn1661_122x32.o utility/u8g_dev_sbn1661_122x32.c

${OBJECTDIR}/utility/u8g_dev_ssd1306_128x32.o: utility/u8g_dev_ssd1306_128x32.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1306_128x32.o utility/u8g_dev_ssd1306_128x32.c

${OBJECTDIR}/utility/u8g_dev_ssd1306_128x64.o: utility/u8g_dev_ssd1306_128x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1306_128x64.o utility/u8g_dev_ssd1306_128x64.c

${OBJECTDIR}/utility/u8g_dev_ssd1309_128x64.o: utility/u8g_dev_ssd1309_128x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1309_128x64.o utility/u8g_dev_ssd1309_128x64.c

${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_bw.o: utility/u8g_dev_ssd1322_nhd31oled_bw.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_bw.o utility/u8g_dev_ssd1322_nhd31oled_bw.c

${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_gr.o: utility/u8g_dev_ssd1322_nhd31oled_gr.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1322_nhd31oled_gr.o utility/u8g_dev_ssd1322_nhd31oled_gr.c

${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw.o: utility/u8g_dev_ssd1325_nhd27oled_bw.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw.o utility/u8g_dev_ssd1325_nhd27oled_bw.c

${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw_new.o: utility/u8g_dev_ssd1325_nhd27oled_bw_new.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_bw_new.o utility/u8g_dev_ssd1325_nhd27oled_bw_new.c

${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr.o: utility/u8g_dev_ssd1325_nhd27oled_gr.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr.o utility/u8g_dev_ssd1325_nhd27oled_gr.c

${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr_new.o: utility/u8g_dev_ssd1325_nhd27oled_gr_new.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1325_nhd27oled_gr_new.o utility/u8g_dev_ssd1325_nhd27oled_gr_new.c

${OBJECTDIR}/utility/u8g_dev_ssd1327_96x96_gr.o: utility/u8g_dev_ssd1327_96x96_gr.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1327_96x96_gr.o utility/u8g_dev_ssd1327_96x96_gr.c

${OBJECTDIR}/utility/u8g_dev_ssd1351_128x128.o: utility/u8g_dev_ssd1351_128x128.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_ssd1351_128x128.o utility/u8g_dev_ssd1351_128x128.c

${OBJECTDIR}/utility/u8g_dev_st7565_64128n.o: utility/u8g_dev_st7565_64128n.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_64128n.o utility/u8g_dev_st7565_64128n.c

${OBJECTDIR}/utility/u8g_dev_st7565_dogm128.o: utility/u8g_dev_st7565_dogm128.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_dogm128.o utility/u8g_dev_st7565_dogm128.c

${OBJECTDIR}/utility/u8g_dev_st7565_dogm132.o: utility/u8g_dev_st7565_dogm132.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_dogm132.o utility/u8g_dev_st7565_dogm132.c

${OBJECTDIR}/utility/u8g_dev_st7565_lm6059.o: utility/u8g_dev_st7565_lm6059.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_lm6059.o utility/u8g_dev_st7565_lm6059.c

${OBJECTDIR}/utility/u8g_dev_st7565_lm6063.o: utility/u8g_dev_st7565_lm6063.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_lm6063.o utility/u8g_dev_st7565_lm6063.c

${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12832.o: utility/u8g_dev_st7565_nhd_c12832.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12832.o utility/u8g_dev_st7565_nhd_c12832.c

${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12864.o: utility/u8g_dev_st7565_nhd_c12864.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7565_nhd_c12864.o utility/u8g_dev_st7565_nhd_c12864.c

${OBJECTDIR}/utility/u8g_dev_st7687_c144mvgd.o: utility/u8g_dev_st7687_c144mvgd.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7687_c144mvgd.o utility/u8g_dev_st7687_c144mvgd.c

${OBJECTDIR}/utility/u8g_dev_st7920_128x64.o: utility/u8g_dev_st7920_128x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7920_128x64.o utility/u8g_dev_st7920_128x64.c

${OBJECTDIR}/utility/u8g_dev_st7920_192x32.o: utility/u8g_dev_st7920_192x32.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7920_192x32.o utility/u8g_dev_st7920_192x32.c

${OBJECTDIR}/utility/u8g_dev_st7920_202x32.o: utility/u8g_dev_st7920_202x32.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_st7920_202x32.o utility/u8g_dev_st7920_202x32.c

${OBJECTDIR}/utility/u8g_dev_t6963_128x64.o: utility/u8g_dev_t6963_128x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_t6963_128x64.o utility/u8g_dev_t6963_128x64.c

${OBJECTDIR}/utility/u8g_dev_t6963_240x128.o: utility/u8g_dev_t6963_240x128.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_t6963_240x128.o utility/u8g_dev_t6963_240x128.c

${OBJECTDIR}/utility/u8g_dev_t6963_240x64.o: utility/u8g_dev_t6963_240x64.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_t6963_240x64.o utility/u8g_dev_t6963_240x64.c

${OBJECTDIR}/utility/u8g_dev_tls8204_84x48.o: utility/u8g_dev_tls8204_84x48.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_tls8204_84x48.o utility/u8g_dev_tls8204_84x48.c

${OBJECTDIR}/utility/u8g_dev_uc1601_c128032.o: utility/u8g_dev_uc1601_c128032.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_uc1601_c128032.o utility/u8g_dev_uc1601_c128032.c

${OBJECTDIR}/utility/u8g_dev_uc1610_dogxl160.o: utility/u8g_dev_uc1610_dogxl160.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_uc1610_dogxl160.o utility/u8g_dev_uc1610_dogxl160.c

${OBJECTDIR}/utility/u8g_dev_uc1701_dogs102.o: utility/u8g_dev_uc1701_dogs102.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_uc1701_dogs102.o utility/u8g_dev_uc1701_dogs102.c

${OBJECTDIR}/utility/u8g_dev_uc1701_mini12864.o: utility/u8g_dev_uc1701_mini12864.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_dev_uc1701_mini12864.o utility/u8g_dev_uc1701_mini12864.c

${OBJECTDIR}/utility/u8g_ellipse.o: utility/u8g_ellipse.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_ellipse.o utility/u8g_ellipse.c

${OBJECTDIR}/utility/u8g_font.o: utility/u8g_font.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_font.o utility/u8g_font.c

${OBJECTDIR}/utility/u8g_font_data.o: utility/u8g_font_data.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_font_data.o utility/u8g_font_data.c

${OBJECTDIR}/utility/u8g_line.o: utility/u8g_line.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_line.o utility/u8g_line.c

${OBJECTDIR}/utility/u8g_ll_api.o: utility/u8g_ll_api.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_ll_api.o utility/u8g_ll_api.c

${OBJECTDIR}/utility/u8g_page.o: utility/u8g_page.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_page.o utility/u8g_page.c

${OBJECTDIR}/utility/u8g_pb.o: utility/u8g_pb.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb.o utility/u8g_pb.c

${OBJECTDIR}/utility/u8g_pb14v1.o: utility/u8g_pb14v1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb14v1.o utility/u8g_pb14v1.c

${OBJECTDIR}/utility/u8g_pb16h1.o: utility/u8g_pb16h1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb16h1.o utility/u8g_pb16h1.c

${OBJECTDIR}/utility/u8g_pb16h2.o: utility/u8g_pb16h2.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb16h2.o utility/u8g_pb16h2.c

${OBJECTDIR}/utility/u8g_pb16v1.o: utility/u8g_pb16v1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb16v1.o utility/u8g_pb16v1.c

${OBJECTDIR}/utility/u8g_pb16v2.o: utility/u8g_pb16v2.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb16v2.o utility/u8g_pb16v2.c

${OBJECTDIR}/utility/u8g_pb32h1.o: utility/u8g_pb32h1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb32h1.o utility/u8g_pb32h1.c

${OBJECTDIR}/utility/u8g_pb8h1.o: utility/u8g_pb8h1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8h1.o utility/u8g_pb8h1.c

${OBJECTDIR}/utility/u8g_pb8h1f.o: utility/u8g_pb8h1f.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8h1f.o utility/u8g_pb8h1f.c

${OBJECTDIR}/utility/u8g_pb8h2.o: utility/u8g_pb8h2.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8h2.o utility/u8g_pb8h2.c

${OBJECTDIR}/utility/u8g_pb8h8.o: utility/u8g_pb8h8.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8h8.o utility/u8g_pb8h8.c

${OBJECTDIR}/utility/u8g_pb8v1.o: utility/u8g_pb8v1.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8v1.o utility/u8g_pb8v1.c

${OBJECTDIR}/utility/u8g_pb8v2.o: utility/u8g_pb8v2.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pb8v2.o utility/u8g_pb8v2.c

${OBJECTDIR}/utility/u8g_pbxh16.o: utility/u8g_pbxh16.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pbxh16.o utility/u8g_pbxh16.c

${OBJECTDIR}/utility/u8g_pbxh24.o: utility/u8g_pbxh24.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_pbxh24.o utility/u8g_pbxh24.c

${OBJECTDIR}/utility/u8g_rect.o: utility/u8g_rect.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_rect.o utility/u8g_rect.c

${OBJECTDIR}/utility/u8g_rot.o: utility/u8g_rot.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_rot.o utility/u8g_rot.c

${OBJECTDIR}/utility/u8g_scale.o: utility/u8g_scale.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_scale.o utility/u8g_scale.c

${OBJECTDIR}/utility/u8g_state.o: utility/u8g_state.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_state.o utility/u8g_state.c

${OBJECTDIR}/utility/u8g_u16toa.o: utility/u8g_u16toa.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_u16toa.o utility/u8g_u16toa.c

${OBJECTDIR}/utility/u8g_u8toa.o: utility/u8g_u8toa.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_u8toa.o utility/u8g_u8toa.c

${OBJECTDIR}/utility/u8g_virtual_screen.o: utility/u8g_virtual_screen.c 
	${MKDIR} -p ${OBJECTDIR}/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -I${INCLUDE} -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utility/u8g_virtual_screen.o utility/u8g_virtual_screen.c

${OBJECTDIR}/watchdog.o: watchdog.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -w -D__DEBUG -I${INCLUDE} -I.\  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/watchdog.o watchdog.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/marlin.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

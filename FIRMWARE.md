  FIRMWARE - RepRap Laser firmware
==========================================

-Firmware forked from original repository https://github.com/lansing-makers-network/buildlog-lasercutter-marlin
-Based off Marlin for 3D printers, for more info see https://github.com/MarlinFirmware/Marlin
-It includes the Graphic Libraries U8glib source code from http://code.google.com/p/u8glib/wiki/u8glib

# Compile and Upload.
You can use the Arduino IDE or Netbeans with [Arduino Pluging](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/Netbeans_Arduino_Install.pdf) to compile and upload the firmware to your hardware.

# Added Laser G/M Codes to Marlin Firmware:
```javascript
 G0  - G1 Similar 
 G1  - Coordinated Movement X Y Z E F
          Sxx -   Laser Power 0-100
          Lxx -   Laser Duration (microseconds)
          Pxx -   Laser PPM (pulses per millimeter) for pulsed firing mode
          Bxx -   Laser Mode 0:CONTINUOUS, 1:PULSED, 2:RASTER
          Dxx -   Laser Serial Debug, 0:off 1:on  
 G2  - CW ARC
          Sxx -   Laser Power 0-100
          Lxx -   Laser Duration (microseconds)
          Pxx -   Laser PPM (pulses per millimeter) for pulsed firing mode
          Bxx -   Laser Mode 0:CONTINUOUS, 1:PULSED, 2:RASTER
          Dxx -   Laser Serial Debug, 0:off 1:on
 G3  - CCW ARC
          Sxx -   Laser Power 0-100
          Lxx -   Laser Duration (microseconds)
          Pxx -   Laser PPM (pulses per millimeter) for pulsed firing mode
          Bxx -   Laser Mode 0:CONTINUOUS, 1:PULSED, 2:RASTER
          Dxx -   Laser Serial Debug, 0:off 1:on
 G4  - Dwell S<seconds> or P<milliseconds>
 G5  - Bezier curve - from http:forums.reprap.org/read.php?147,93577
 G7  - Execute Laser Raster line - Base64
          Lxx     -   Number of pixels
          $x      -   Raseter direction 0:toRight, 1:toLeft
          Dxxxxx  -   Base64 pixel encoding

 M80  - Turn on Power Supply
 M81  - Turn off Power Supply
 M104 - Set TE Cooling target temp, if enabled. Sxx:Temp
 M106 - Fan on
 M107 - Fan off
 M649 - Set laser options     -- USED???????????????????????
          Sxx -   Laser Power Intensity 0-100
          Lxx -   Laser Duration (microseconds)
          Pxx -   Laser PPM (pulses per millimeter) for pulsed firing mode
          Bxx -   Laser Mode 0:CONTINUOUS, 1:PULSED, 2:RASTER
          Dxx -   Laser Serial Debug, 0:off 1:on
          Rxx -   Laser raster mm per pulse
          Fxx -   Feed rate
 M650 - Set peel distance    -- USED???????????????????????
          Dxx -   Peel Distance
          Sxx -   Peel Speed
          Pxx -   Peel Pause
 M651 - Run peel move
 ```

# Firmware Configuration

In the repository, find the configuration.h in order to configure your hardware. At the end of the document you can find the configuration for the laser. You will need a basic understanding of the Marlin firmware in order to configure the hardware, if not you can ask me. The code it is commented for a better understanding.

```javascript
//===========================================================================
//============================= Laser Settings ==============================
//===========================================================================

    // Laser control is used by the Muve1 3D printer and the Buildlog.net laser cutter
    // Uncomment to disable it.
        #define LASER
        #define LASER_JTECHPHOT     // Attached to a JTech Phonotincs Laser board - Measure laser current.

    // Stepper motors Step pulse width increment
        #define STEPPERS_STEPWIDTH_INCREASE     //Uncomment to increase the step signal width, commend for standar stepper motor controller.

    // The following define selects how to control the laser.  Please choose the one that matches your setup.
    // NOTE: check <pins.h> for the pin numbers of LASER_FIRING_PIN and LASER_INTENSITY_PIN for your board.
    //      1 = Single pin control - LOW when off, HIGH when on, PWM to adjust intensity. Only used pin LASER_FIRING_PIN
    //      2 = Two pin control - A firing pin for which LOW = off, HIGH = on, and a seperate intensity pin which carries a constant PWM signal and adjusts duty cycle to control intensity
        #define LASER_CONTROL       1

    // Laser temperature control.
        #define LASER_MAX_TEMP              40    // Max allowed laser case temp. Uncomment to disable error display.
        
    // Active laser cooling using Termical Electric Cooling (TEC)
        //#define  LASER_ENABLE_TECOOLING        // Enable Termical Electric Cooling (TEC) to cooldown laser head. Using Temp T0 and Heater0 output. Comment to disable
												//NOTE: recommended not to use it, it has not been tested fully. Use it under your responsability.
        #define LASER_TECOOLING_TEMP        24  // Termical Electric Cooling (TEC) to cooldown laser head. Using Temp T0 and Heater0 output

    // Default values : defines select which G codes tell the laser to fire.  It's OK to uncomment more than one.
        #define LASER_FIREON_G1             0   // Fire laser on G1 moves. 0:Disable 1:Enable
        #define LASER_FIREON_SPINDLE        1   // Fire laser on M3 M5 commands. 0:Disable 1:Enable
        #define LASER_FIREON_E              0   // Fire laser on E moves. 0:Disable 1:Enable
        
    // Raster mode enables the laser to etch bitmap data at high speeds.  Increases command buffer size substantially.
    // Comment to disable raster.
        #define LASER_RASTER
        #define LASER_MAX_RASTER_LINE       68  // maximum number of base64 encoded pixels per raster gcode command
        #define LASER_RASTER_ASPECT_RATIO   1   // pixels aren't square on most displays, 1.33 == 4:3 aspect ratio
        #define LASER_RASTER_MM_PER_PULSE   0.2 //Can be overridden by providing an R value in M649 command : M649 S17 B2 D0 R0.1 F4000

    // Uncomment the following if the laser cutter is equipped with a peripheral relay board
    // to control power to an exhaust fan, water pump, laser power supply, etc.
        //#define LASER_PERIPHERALS
        //#define LASER_PERIPHERALS_TIMEOUT   30000  // Number of milliseconds to wait for status signal from peripheral control board

    //// Uncomment the following line to enable cubic bezier curve movement with the G5 code
    // #define G5_BEZIER

    // Laser driver configurations - Change it for your laser.
    #ifdef  LASER_JTECHPHOT
        #define LASER_PWM               5000 // hertz - PWM control freq.
        #define LASER_POWER             2.5  // Laser Power
        #define LASER_FOCAL_HEIGHT      0 // z axis position at which the laser is focused
    #else
        //Generic Laser.
        #define LASER_POWER             40  // Laser Power
        #define LASER_PWM               25000 // hertz - PWM control freq.
        #define LASER_FOCAL_HEIGHT      74.50 // z axis position at which the laser is focused
    #endif

//===========================================================================
```


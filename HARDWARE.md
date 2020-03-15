  HARDWARE - RepRap Laser firmware
==========================================
The firmware has been tested and configured for the RAMPS 1.4 + Arduino Mega + Smart LCD controller.
It could work on any other RepRap compatible hardware, you will need to modify the pins.h definitions for your board.

The firmware has been configure to be connected using the following pin connections.

![](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/Documents/Ramps_1.4_Freakyattic_MarlinLaser_Connections.png)

![](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/ArduinoAddons/ramps.jpg)

# CNC Machine

The RAMPS board controlls a CNC machine model CNC6040, connecting the CNC controller board port to the STEP/DIR pins in the RAMPS board, with the Stepper drivers removed.

# Laser Unit
The low power laser module used it is from [J. Tech. Photonics](http://http://jtechphotonics.com/), the 2.8W Laser and Driver kit that includes

* 2.8W 445nm 9mm Laser Diode Component (with 2.5′ Mini Fit Jr. Connector Cable included)
* 2.5 Amp Adjustable Safety Compliant Laser Diode Driver
* Power Adapter 12V 2.5A, US Style Plug
* Laser Safety Goggles for 445nm Lasers

![](http://jtechphotonics.com/wp-content/uploads/2014/10/Highlight-FDA-Laser-Kit-800.jpg)

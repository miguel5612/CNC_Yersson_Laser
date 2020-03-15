Marlin-based Laser Cutter/Engraver Firmware
==========================================

This repository holds the firmware for a laser cutter/engraver based on Marlin software ( version 1.0.0 ) and RepRap compatible hardware. The original firmware was forked from https://github.com/lansing-makers-network/buildlog-lasercutter-marlin and few modifications have been added.

This firmware it is developed to support any generic gcode laser software generators, but you can check the other FreakyAttic repository [VisiCut GCode Pluging](https://github.com/freakyattic/LibLaserCut) which implements a plugin for the amazing open-source laser software [VisiCut](https://hci.rwth-aachen.de/visicut), check their webpage.

Marlin-based laser cutter/engraver information pages:
 * [HARDWARE](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/HARDWARE.md): information about hardware connections, configurations ...
 * [FIRMWARE](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/FIRMWARE.md): information about software configurations, how to install, ...

# Features
   - Support to be opened with Netbeans 8.1 + Arduino plugin. Easier to be modified.
   - Add support for external stepper drivers with slower step trigger signal, like TB6560 driver boards.
   - Raster image support, base64.
   - Different configurations to fire laser; through G1 movements, M3/M5 commands, etc...
   - Vector cutting of lines and arcs at your given power level.
   - Display the laser temperature and current.
   - Add extra display menus to handle the laser.

[![](https://github.com/freakyattic/Firmware-LaserCutter-Marlin/blob/master/Documents/VideoScreenshot.png?raw=true)](https://www.youtube.com/watch?v=5hRFJhGyTA4)   
![](https://github.com/freakyattic/buildlog-lasercutter-marlin/blob/master/Documents/MarlinLaser_MainScreen.jpg)
![](https://github.com/freakyattic/buildlog-lasercutter-marlin/blob/master/Documents/MarlinLaser_StatusScreen.jpg)
![](https://github.com/freakyattic/buildlog-lasercutter-marlin/blob/master/Documents/MarlinLaser_test1.jpg)

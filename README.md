# PX-12
The goal of this project is to control 5V pump and EV (such as https://fr.aliexpress.com/item/32792085658.html) via Dynamixel AX-12 protocol (Serial Half-duplex one wire), in order to reduce the number of cable inside the robot for Eurobot by daisy chaining the pump.
## Electronics
The PCB is solder directly at the end of the pump. A connector is present in order to connect the EV on the PCB. 

![alt text](Doc/Front_pcb_render.PNG?raw=true)

MCU: STM32F042G4\
Current shunt monitor: INA139
R_SHUNT: 0.01 Ohm

## Develloping on the PCB
In order to dev on the MCU you can use either STM32CubeIDE (Eclipse based) or VSCode.
### With VSCode
To dev STM32 chip with VSCode you need to install **stm-helper** from the extension manager in VSCode. After that you can either clone this repo and click on UpdateWorkspace, make sure 
to have the makefile and the .ioc in the source file tree otherwise the extension will not appear at the bottom of the app. Then you can click on **Build** to compile the project and **Download** to flash the MCU.
### Flashing the PCB 
Flashing is done via SWD port in the top of the PCB, in order to flash those PCB you'll need a STLINK V2. 

## TODO
* Add version V1.1 with vaccum sensor to replace the current shunt sensor. 
* Create software for the PX-12.
* Add documentation 
* Add exemple to work with arduino and STM32 platform

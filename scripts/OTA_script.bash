#!/bin/bash
cd ~/Analog_Design/Analog_Blocks/OTA/Netlists/Testbench
ngspice -i "Miller_OTA_meas.spice" -a || sh
ngspice -i "Miller_OTA_meas_tran.spice" -a || sh


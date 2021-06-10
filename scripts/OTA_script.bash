#!/bin/bash
cd ~/Analog_blocks/Analog_Blocks/OTA/Netlists/Testbench
#ngspice -i "Miller_OTA5v_meas.spice" -a || sh
ngspice -i "Miller_OTA5v_meas_post.spice" -a || sh


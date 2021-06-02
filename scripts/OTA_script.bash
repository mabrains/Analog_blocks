#!/bin/bash
cd ~/Analog_blocks/Analog_Blocks/OTA/Netlists/Testbench
ngspice -i "Miller_OTA1.8v_meas.spice" -a || sh
ngspice -i "Miller_OTA1.8v_meas_transient.spice" -a || sh


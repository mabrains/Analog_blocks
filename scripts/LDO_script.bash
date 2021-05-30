#!/bin/bash
cd ~/Analog_blocks/Analog_Blocks/LDO/Netlists/Testbench
ngspice -i "LDO_Miller_1.8v_meas.spice" -a || sh


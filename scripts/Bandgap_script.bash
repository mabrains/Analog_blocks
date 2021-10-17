#!/bin/bash
cd ~/Analog_blocks/Analog_Blocks/Bandgap/Netlists/Testbench
#ngspice -i "Bandgap1.8v_2_meas.spice" -a || sh
ngspice -i "Bandgap1.8v_2_meas_post.spice" -a || sh


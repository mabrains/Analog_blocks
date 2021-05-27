#!/bin/bash
cd ~/Analog_blocks/Analog_Blocks/Bandgap/Netlists/Testbench
ngspice -i "Bandgap1.8v_meas.spice" -a || sh


# Bandgap reference simulation

## Schematic

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/Bandgap_self_3.7_schematic.png)


## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot vref) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/Temp_variation.png)

## c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/supply_variation.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/Transient_simulation.png)

## e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vref)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/PSRR_simulation.png)

## f. Testbench netlist

The netlist of all previous analyses is below or you can run it using the script "BGR_script.bash" existed in scripts folder.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/Testbench.png)

## Simulation results

Specification    | Achieved
-----------------| ------------------------------------
Reference output |              1.1v
Temp. variation  | 10.5mv over T from -40 deg to 125 deg
Supply variation | 30mv  over VDD from 3v to 3.6v 

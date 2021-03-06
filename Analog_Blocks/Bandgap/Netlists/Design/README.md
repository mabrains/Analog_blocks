# Bandgap reference simulation

## Schematic

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/schematic_banba.png)


## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot bg_out) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/temp_var_banba.png)

## c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/supply_var_banba.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

Supply varies from 0 to 2.2v
![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/tran2.2v_banba.png)
Supply varies from 0 to 2.4v
![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/tran_2.4banba.png)
Supply varies from 0 to 2v
![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/tran2v_banba.png)

## e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(bg_out)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/psrr_banba.png)

## f. Testbench netlist

The netlist of all previous analyses is below or you can run it using the script "BGR_script.bash" existed in scripts folder.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap5v/testbench_banba.png)

## Simulation results

Specification    | Achieved
-----------------| ------------------------------------
Reference output |              1.11v
Temp. variation  | 2mv over T from 0 deg to 85 deg
Supply variation | less than 1mv  over VDD from 2v to 2.4v 

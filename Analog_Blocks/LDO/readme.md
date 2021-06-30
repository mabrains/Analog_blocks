# LDO Simulation

## Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/Schematic.png)

## Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/Error_amp_sch.png)

## Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/BGR.png)

## Bandgap OTA

![Image of LDO_BGR_OTA](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/BGR_OTA.png)

## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Vout/Vin charactersitics

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vout vs vin.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/Vout_Vin.png)

## c. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot db(vout)) to plot the PSRR in dB.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/PSRR.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vin and vout vs time.

![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/Transient.png)

## e. Testbench netlist

The netlist of all previous analyses is below or you can simply run it using script "LDO_script.bash" existed in scripts folder.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/TB_netlist.png)

## Simulation results

  Specification  |      TT        |       FF         |       SS         |       FS         |         SF         
-----------------| ---------------|------------------|------------------|------------------|------------------
output Voltage   | 1.79v to 1.84v |1.79v to 1.85v    |1.77v to 1.83v    |1.79v to 1.83v    |1.79 to 1.83v       
Input range      | 1.812v to 2.2v |1.8v to 2.2v      |1.877v to 2.2v    |1.8v to 2.2v      |1.8v to 2.2v
Vdropout         | 12.4 mv        |0.3 mv            |77 mv             |0.8 mv            |10mv
Line regulation  | 110 mv/v       |135 mv/v          |142 mv/v          |74mv/v            |120mv/v
PSRR @ 1KHz      | 31 dB          |36 dB             |29 dB             |29 dB             |30 dB
PSRR @ 1MHz      | 77 dB          |76 dB             |82 dB             |86 dB             |85 dB


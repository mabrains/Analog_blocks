# LDO Simulation

## Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Schematic.png)

## Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Error_amp_sch.png)

## Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/BGR.png)

## Bandgap OTA

![Image of LDO_BGR_OTA](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/BGR_OTA.png)

## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Vout/Vin charactersitics

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vout vs vin.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Vout_Vin.png)

## c. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot db(vout)) to plot the PSRR in dB.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/PSRR.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vin and vout vs time.

![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Transient.png)

## e. Testbench netlist

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/TB_netlist.png)

## Simulation results

Specification    | Achieved
-----------------| ---------
output Voltage   | 1.8v
Input range      | 1.9v to 2.5v
Vdropout         | 0.1v
Line regulation  | 26 mv/v
PSRR @ DC        | 30 dB
PSRR @ 1KHz      | 45 dB
PSRR @ 1MHz      | 110 dB

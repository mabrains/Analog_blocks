v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3010 -1520 3010 -1450 { lab=Vout}
N 3010 -1390 3010 -1360 { lab=#net1}
N 3010 -1300 3010 -1240 { lab=0}
N 2810 -1240 3010 -1240 { lab=0}
N 2750 -1680 2810 -1680 { lab=Vin}
N 2810 -1420 2810 -1240 { lab=0}
N 2810 -1680 2810 -1620 { lab=Vin}
N 2910 -1520 3110 -1520 { lab=Vout}
N 2640 -1520 2710 -1520 { lab=Vref}
C {devices/capa.sym} 3010 -1420 0 0 {name=C2
m=1
value=4u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 3010 -1330 0 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2750 -1680 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 2810 -1240 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 3110 -1520 0 1 {name=l3 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 3265 -1935 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
*******************************************************
*Source initialization
*******************************************************
VVref Vref 0 1.2
VVin Vin 0 DC 0 AC 0
Iout Vout Vtest DC 0 AC 0
VVtest Vtest 0 DC 0 AC 0 
*******************************************************
*Dropout voltage 
*******************************************************
*.control
*alter VVin DC = 2
*foreach current 0 50m
*alter Iout $current 
*op
*show
*end
*.endc
*******************************************************
*Line regulation
*******************************************************
*.control
*foreach current 0 100u 1m 10m 50m
*alter Iout $current
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*let LR='(Vmax-Vmin)/(1.6*1.8)'
*echo Line_Regulation @ $current = $&LR
*end
*.endc
*******************************************************
*Load regulation
*******************************************************
*.control
*foreach voltage 2 2.5 3 3.6
*alter VVin $voltage
*dc Iout 0 50m 10u
*plot Vout
*meas DC Vmin FIND Vout AT=50m
*meas DC Vmax FIND Vout AT=0
*let LR2='(Vmax-Vmin)/(50m*1.8)'
*echo Load_Regulation @ $voltage = $&LR2
*end
*.endc
*******************************************************
.end
" }
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Miller_1.8v/LDO_test.sym} 2810 -1520 0 0 {name=x1}
C {devices/lab_pin.sym} 2640 -1520 0 0 {name=l4 sig_type=std_logic lab=Vref}
C {devices/code.sym} 3020 -1680 0 0 {name=SF_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="

.param mc_mm_switch=0
.param mc_pr_switch=0
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_01v8__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_pfet_g5v0d10v5__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d16v0__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d16v0__sf_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_g5v0d10v5__sf.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__sf_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__sf_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/sf/nonfet.spice"
* Mismatch parameters
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice"
* Resistor/Capacitor
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice"
* Special cells
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/sf/specialized_cells.spice"
* All models
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/all.spice"
* Corner
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/sf/rf.spice"


"}
C {devices/code_shown.sym} 3770 -1950 0 0 {name=NGSPICE2
only_toplevel=false 
value="
*******************************************************
*Line Transient
*******************************************************
*.control
*alter @VVin[pulse] = [ 2 3.6 1m 1n 1n 1m 2m ]
*foreach current 0 100u 1m 10m 50m
*alter Iout $current 
*tran 100u 3m
*plot Vin
*plot Vout
*end
*.endc
*******************************************************
*Load Transient
*******************************************************
*.control
*alter @Iout[pulse] = [ 0 50m 1m 1n 1n 1m 2m ]
*foreach voltage 2 2.5 3 3.6
*alter VVin $voltage 
*tran 100u 3m
*plot i(VVtest) 
*plot Vout
*end
*.endc
*******************************************************
*PSRR analysis
*******************************************************
*.control
*alter VVin AC = 1  
*foreach voltage 2 2.5 3 3.6
*alter VVin $voltage
*ac dec 10 1 100MEG
*plot vdb(Vout)
*meas AC PSR_1k FIND vdb(Vout) AT=1k
*meas AC PSR_1M FIND vdb(Vout) AT=1MEG 
*end
*.endc
*******************************************************
*Quiescent current
*******************************************************
*.control
*foreach voltage 2 2.5 3 3.6
*alter VVin $voltage
*dc Iout 0 50m 10u
*meas DC Iq FIND i(VVin) AT=0
*end
*.endc
*******************************************************
*Temerature variation 
*******************************************************
*.control
*foreach voltage 2 2.5 3 3.6
*alter VVin $voltage
*dc TEMP -45 125 1
*plot Vout
*end
*.endc
*******************************************************
.end
"}

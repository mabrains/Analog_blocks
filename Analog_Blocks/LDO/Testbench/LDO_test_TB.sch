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
value=5u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 3010 -1330 0 0 {name=R3
value=0.5
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2750 -1680 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 2810 -1240 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 3110 -1520 0 1 {name=l3 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 3265 -1935 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
************************************************
*Source initialization
************************************************
VVref Vref 0 1.2
VVin Vin 0 DC 0 AC 0
Iout Vout 0 DC 0 AC 0 
************************************************
*Dropout voltage 
************************************************
.control 
alter VVin DC = 1.85
op
show
.endc
************************************************
*Line regulation
************************************************
*.control
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*print (Vmax-Vmin)/(1.6*1.8)
*.endc
***********************************************
*.control
*alter Iout DC = 100u
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*print (Vmax-Vmin)/(1.6*1.8)
*.endc
***********************************************
*.control
*alter Iout DC = 1m
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*print (Vmax-Vmin)/(1.6*1.8)
*.endc
***********************************************
*.control
*alter Iout DC = 10m
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*print (Vmax-Vmin)/(1.6*1.8)
*.endc
************************************************
*.control
*alter Iout DC = 50m
*dc VVin 2 3.6 0.1
*plot Vout
*meas DC Vmin FIND Vout AT=2
*meas DC Vmax FIND Vout AT=3.6
*print (Vmax-Vmin)/(1.6*1.8)
*.endc
***********************************************
.end
" }
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Miller_1.8v/LDO_test.sym} 2810 -1520 0 0 {name=x1}
C {devices/lab_pin.sym} 2640 -1520 0 0 {name=l4 sig_type=std_logic lab=Vref}
C {devices/code.sym} 2990 -1700 0 0 {name=TTTT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="

.param mc_mm_switch=0
.param mc_pr_switch=0
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/nonfet.spice"
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
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice"
* All models
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/all.spice"
* Corner
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/rf.spice"


"}

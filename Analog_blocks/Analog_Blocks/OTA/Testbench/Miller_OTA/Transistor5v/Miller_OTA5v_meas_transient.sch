v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1620 -1340 1620 -1240 { lab=#net1}
N 1620 -1460 1620 -1400 { lab=Vdd}
N 1580 -1080 1840 -1080 { lab=0}
N 1990 -1240 2040 -1240 { lab=Vout}
N 2020 -1240 2020 -1200 { lab=Vout}
N 2020 -1140 2020 -1080 { lab=0}
N 1840 -1080 2020 -1080 { lab=0}
N 1580 -1460 1620 -1460 { lab=Vdd}
N 1620 -1240 1690 -1240 { lab=#net1}
N 1580 -1280 1690 -1280 { lab=Vp}
N 1840 -1460 1840 -1320 { lab=Vdd}
N 1620 -1460 1840 -1460 { lab=Vdd}
N 1840 -1160 1840 -1080 { lab=0}
N 1660 -1200 1690 -1200 { lab=Vout}
N 1660 -1200 1660 -1100 { lab=Vout}
N 1660 -1100 2000 -1100 { lab=Vout}
N 2000 -1240 2000 -1100 { lab=Vout}
C {devices/lab_pin.sym} 1580 -1460 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1620 -1370 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1580 -1280 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1580 -1080 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 2040 -1240 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 2020 -1170 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 2125 -1515 0 0 {name=NGSPICE1
only_toplevel=true
value="
*************************************************************************
*Source intialization
*************************************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vneg vn 0 DC 0 AC 0
*************************************************************************
*Transient analysis
*************************************************************************
.control
alter @Vpos[Sin] [ 0.9 1m 1Meg ]
tran 0.05u 5u 
plot vp Vout
let o= vout - vp
meas tran offset FIND o AT=1u
.endc
*************************************************************************
*Slew Rate analysis
*************************************************************************
.control
alter @Vpos[PULSE] = [ 0.2 1.8 1u 1p 1p 0.5u 1u ]
define SR(x,y) x/y
tran 0.01u 5u
plot vp Vout 
meas tran Trise TRIG v(Vout) VAL=0.4 RISE=2 TARG v(Vout) VAL=1.6 RISE=2
print SR(vdd,Trise)  
.endc
*************************************************************************
.end
" }
C {devices/code.sym} 1930 -1510 0 0 {name=TT_MODELS
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
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice"
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
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor5v/Miller_OTA_NMOS.sym} 1850 -1240 0 0 {name=x1}

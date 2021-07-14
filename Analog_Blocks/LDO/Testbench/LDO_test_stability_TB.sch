v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2340 -1290 2340 -1230 { lab=Vl}
N 2340 -1170 2340 -1110 { lab=Vout}
N 2340 -1260 2480 -1260 { lab=Vl}
N 2340 -1110 2340 -1070 { lab=Vout}
N 2340 -1010 2340 -980 { lab=0}
N 2340 -1320 2400 -1320 { lab=Vin}
N 2340 -1500 2340 -1350 { lab=Vin}
N 2400 -1500 2400 -1320 { lab=Vin}
N 2340 -1500 2400 -1500 { lab=Vin}
N 2090 -1500 2340 -1500 { lab=Vin}
N 1790 -980 2340 -980 { lab=0}
N 1590 -1500 2090 -1500 { lab=Vin}
N 1600 -980 1790 -980 { lab=0}
N 1680 -1500 1680 -1440 { lab=Vin}
N 1680 -1380 1680 -1320 { lab=#net1}
N 2340 -1120 2390 -1120 { lab=Vout}
N 1800 -1120 2080 -1120 { lab=#net2}
N 2140 -1120 2340 -1120 { lab=Vout}
N 1800 -1120 1800 -1090 { lab=#net2}
N 1800 -1030 1800 -1020 { lab=Vtest}
N 1710 -1020 1800 -1020 { lab=Vtest}
N 2460 -1260 2460 -1190 { lab=Vl}
N 2460 -1130 2460 -1100 { lab=#net3}
N 2460 -1040 2460 -980 { lab=0}
N 2340 -980 2460 -980 { lab=0}
N 1770 -1380 1860 -1380 { lab=Vref}
N 2020 -1210 2020 -980 { lab=0}
N 2020 -1500 2020 -1430 { lab=Vin}
N 1800 -1260 1860 -1260 { lab=#net2}
N 1800 -1260 1800 -1120 { lab=#net2}
N 1680 -1320 1860 -1320 { lab=#net1}
N 2220 -1320 2300 -1320 { lab=#net4}
C {devices/code_shown.sym} 2545 -1415 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup Vin 0 DC 2 AC 0 
VVref Vref 0 DC 1.2 AC 0
VVin vtest 0 DC 0 AC 1
Iout Vl 0 DC 50m AC 0
****************************************************
*Stability analysis 
****************************************************
.control
set units = degrees
ac dec 10 1 200MEG
show
plot db(Vout)
plot phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=1
meas ac GBW WHEN vdb(Vout)= 0
meas ac PM FIND vp(Vout) WHEN vdb(Vout)=0
.endc
****************************************************
.end
" }
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2320 -1320 0 0 {name=M1
L=0.5
W=20
nf=1
mult=1400
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 2340 -1200 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2340 -1040 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 1680 -1410 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 2480 -1260 0 1 {name=l1 sig_type=std_logic lab=Vl}
C {devices/lab_pin.sym} 2390 -1120 0 1 {name=l2 sig_type=std_logic lab=Vout}
C {devices/ind.sym} 2110 -1120 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 1800 -1060 0 0 {name=C1
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1590 -1500 0 0 {name=l3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 1770 -1380 0 0 {name=l4 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 1710 -1020 0 0 {name=l5 sig_type=std_logic lab=Vtest}
C {devices/lab_pin.sym} 1600 -980 0 0 {name=l6 sig_type=std_logic lab=0}
C {devices/capa.sym} 2460 -1160 0 0 {name=C2
m=1
value=5u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 2460 -1070 0 0 {name=R3
value=0.5
footprint=1206
device=resistor
m=1}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Error_amplifier_Folded.sym} 2020 -1320 0 0 {name=x1}
C {devices/code.sym} 2540 -1580 0 0 {name=SF_MODELS
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

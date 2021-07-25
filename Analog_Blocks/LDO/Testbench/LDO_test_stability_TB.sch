v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2330 -1320 2330 -1260 { lab=Vload}
N 2330 -1200 2330 -1140 { lab=Vout}
N 2330 -1290 2470 -1290 { lab=Vload}
N 2330 -1140 2330 -1100 { lab=Vout}
N 2330 -1040 2330 -1010 { lab=0}
N 2330 -1350 2390 -1350 { lab=Vin}
N 2330 -1530 2330 -1380 { lab=Vin}
N 2390 -1530 2390 -1350 { lab=Vin}
N 2330 -1530 2390 -1530 { lab=Vin}
N 2080 -1530 2330 -1530 { lab=Vin}
N 1780 -1010 2330 -1010 { lab=0}
N 1580 -1530 2080 -1530 { lab=Vin}
N 1590 -1010 1780 -1010 { lab=0}
N 1670 -1530 1670 -1470 { lab=Vin}
N 1670 -1410 1670 -1350 { lab=#net1}
N 2330 -1150 2380 -1150 { lab=Vout}
N 1790 -1150 2070 -1150 { lab=#net2}
N 2130 -1150 2330 -1150 { lab=Vout}
N 2450 -1290 2450 -1220 { lab=Vload}
N 2450 -1160 2450 -1130 { lab=#net3}
N 2450 -1070 2450 -1010 { lab=0}
N 2330 -1010 2450 -1010 { lab=0}
N 1760 -1410 1850 -1410 { lab=Vref}
N 2010 -1240 2010 -1010 { lab=0}
N 2010 -1530 2010 -1460 { lab=Vin}
N 1790 -1290 1850 -1290 { lab=#net2}
N 1790 -1290 1790 -1150 { lab=#net2}
N 1670 -1350 1850 -1350 { lab=#net1}
N 2210 -1350 2290 -1350 { lab=#net4}
N 1680 -1150 1700 -1150 { lab=Vtest}
N 1760 -1150 1790 -1150 { lab=#net2}
C {devices/code_shown.sym} 2535 -1675 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup Vin 0 DC 0 AC 0 
VVref Vref 0 DC 1.2 AC 0
VVin Vtest 0 DC 0 AC 1
Iout Vload 0 DC 0 AC 0
****************************************************
*Stability analysis 
****************************************************
.control
foreach voltage 2 3.6
alter Vsup $voltage
foreach current 0 50m
alter Iout $current
set units = degrees
ac dec 10 0.1 200MEG
*show
plot db(Vout)
plot phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=1
meas ac GBW WHEN vdb(Vout)= 0
meas ac PM FIND vp(Vout) WHEN vdb(Vout)=0
end
end
.endc
****************************************************
.end
" }
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2310 -1350 0 0 {name=M1
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
C {devices/res.sym} 2330 -1230 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2330 -1070 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 1670 -1440 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 2470 -1290 0 1 {name=l1 sig_type=std_logic lab=Vload}
C {devices/lab_pin.sym} 2380 -1150 0 1 {name=l2 sig_type=std_logic lab=Vout}
C {devices/ind.sym} 2100 -1150 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 1730 -1150 1 0 {name=C1
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1580 -1530 0 0 {name=l3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 1760 -1410 0 0 {name=l4 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 1680 -1150 0 0 {name=l5 sig_type=std_logic lab=Vtest}
C {devices/lab_pin.sym} 1590 -1010 0 0 {name=l6 sig_type=std_logic lab=0}
C {devices/capa.sym} 2450 -1190 0 0 {name=C2
m=1
value=4u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 2450 -1100 0 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Error_amplifier_Folded.sym} 2010 -1350 0 0 {name=x1}
C {devices/code.sym} 2100 -1710 0 0 {name=SF_MODELS
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

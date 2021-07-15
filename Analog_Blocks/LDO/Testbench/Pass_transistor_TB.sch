v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1680 -650 1780 -650 { lab=Vin}
N 1680 -600 1680 -580 { lab=Vout}
N 1790 -600 1840 -600 { lab=Vout}
N 1680 -620 1680 -600 { lab=Vout}
N 1680 -600 1790 -600 { lab=Vout}
N 1680 -920 1680 -820 { lab=Vin}
N 1680 -820 1680 -680 { lab=Vin}
N 1780 -820 1780 -650 { lab=Vin}
N 1680 -820 1780 -820 { lab=Vin}
N 1680 -520 1680 -480 { lab=#net1}
N 1530 -650 1530 -630 { lab=#net2}
N 1530 -650 1640 -650 { lab=#net2}
N 1680 -420 1680 -360 { lab=0}
N 1530 -570 1530 -390 { lab=0}
N 1530 -390 1680 -390 { lab=0}
N 1430 -580 1490 -580 { lab=Vref}
N 1350 -620 1490 -620 { lab=#net1}
N 1350 -620 1350 -500 { lab=#net1}
N 1350 -500 1680 -500 { lab=#net1}
N 1770 -600 1770 -540 { lab=Vout}
N 1770 -480 1770 -390 { lab=0}
N 1680 -390 1770 -390 { lab=0}
N 2420 -650 2520 -650 { lab=Vin2}
N 2420 -600 2420 -580 { lab=Vout2}
N 2530 -600 2580 -600 { lab=Vout2}
N 2420 -620 2420 -600 { lab=Vout2}
N 2420 -600 2530 -600 { lab=Vout2}
N 2420 -920 2420 -820 { lab=Vin2}
N 2420 -820 2420 -680 { lab=Vin2}
N 2520 -820 2520 -650 { lab=Vin2}
N 2420 -820 2520 -820 { lab=Vin2}
N 2420 -520 2420 -480 { lab=#net3}
N 2420 -420 2420 -360 { lab=0}
N 2010 -710 2070 -710 { lab=Vref2}
N 2510 -600 2510 -540 { lab=Vout2}
N 2510 -480 2510 -390 { lab=0}
N 2420 -390 2510 -390 { lab=0}
N 2350 -650 2380 -650 { lab=#net4}
N 2000 -500 2420 -500 { lab=#net3}
N 2000 -590 2000 -500 { lab=#net3}
N 2000 -590 2070 -590 { lab=#net3}
C {devices/lab_pin.sym} 1680 -920 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 1680 -360 0 0 {name=l3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1840 -600 0 1 {name=l4 sig_type=std_logic lab=Vout}
C {devices/launcher.sym} 1180 -740 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/code_shown.sym} 860 -860 0 0 {name=NGSPICE
only_toplevel=true
value=
"
.option wnflag=1 
.option savecurrents
**.subckt test_bsource PLUS MINUS OUT
*.ipin PLUS
*.ipin MINUS
*.opin OUT
.param VDD=3.6
.param GAIN=\{1000/VDD*2\}
VVin Vin 0 2
VVin2 Vin2 0 2
VVref Vref 0 1.2
VVref2 Vref2 0 1.2
.control
save all
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
save @m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs]
save @m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vth]
op
show
write Pass_transistor_TB.raw
.endc
" }
C {devices/ngspice_get_value.sym} 1800 -780 0 0 {name=r1 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs])"
descr="Vgs="}
C {devices/ngspice_get_value.sym} 1800 -720 0 0 {name=r3 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds])"
descr="Vds="}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1660 -650 0 0 {name=M1
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
C {devices/ngspice_get_value.sym} 1800 -690 0 0 {name=r2 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 1800 -660 0 0 {name=r4 node="i(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 1800 -750 0 0 {name=r9 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth])"
descr="Vth="}
C {devices/code.sym} 1090 -970 0 0 {name=SF_MODELS
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
C {devices/res.sym} 1680 -550 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1680 -450 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} 1530 -600 0 0 {name=E1 value=1e6 max=3.6 min=0}
C {devices/lab_pin.sym} 1430 -580 0 0 {name=l2 sig_type=std_logic lab=Vref}
C {devices/isource.sym} 1770 -510 0 0 {name=I0 value=50m}
C {devices/lab_pin.sym} 2420 -920 0 0 {name=l5 sig_type=std_logic lab=Vin2}
C {devices/lab_pin.sym} 2420 -360 0 0 {name=l6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 2580 -600 0 1 {name=l7 sig_type=std_logic lab=Vout2}
C {devices/ngspice_get_value.sym} 2540 -780 0 0 {name=r5 node="v(@m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs])"
descr="Vgs="}
C {devices/ngspice_get_value.sym} 2540 -720 0 0 {name=r6 node="v(@m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vds])"
descr="Vds="}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2400 -650 0 0 {name=M2
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
C {devices/ngspice_get_value.sym} 2540 -690 0 0 {name=r7 node="v(@m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 2540 -660 0 0 {name=r8 node="i(@m.xm2.msky130_fd_pr__pfet_g5v0d10v5[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 2540 -750 0 0 {name=r10 node="v(@m.xm2.msky130_fd_pr__pfet_g5v0d10v5[vth])"
descr="Vth="}
C {devices/res.sym} 2420 -550 0 0 {name=R3
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2420 -450 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2010 -710 0 0 {name=l8 sig_type=std_logic lab=Vref2}
C {devices/isource.sym} 2510 -510 0 0 {name=I1 value=50m}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/OTA/Schematic/Ideal_opamp/Ideal_opamp.sym} 2210 -650 0 0 {name=x1}

v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1600 -790 1660 -790 { lab=#net1}
N 1700 -790 1800 -790 { lab=Vin}
N 1700 -740 1700 -720 { lab=Vout}
N 1810 -740 1860 -740 { lab=Vout}
N 1700 -500 1810 -500 { lab=0}
N 1810 -560 1810 -500 { lab=0}
N 1700 -640 1700 -620 { lab=#net2}
N 1700 -560 1700 -500 { lab=0}
N 1700 -500 1700 -480 { lab=0}
N 1810 -740 1810 -620 { lab=Vout}
N 1700 -760 1700 -740 { lab=Vout}
N 1700 -660 1700 -640 { lab=#net2}
N 1700 -740 1810 -740 { lab=Vout}
N 1700 -1060 1700 -960 { lab=Vin}
N 1700 -960 1700 -820 { lab=Vin}
N 1800 -960 1800 -790 { lab=Vin}
N 1260 -640 1700 -640 { lab=#net2}
N 1260 -750 1260 -640 { lab=#net2}
N 1260 -750 1340 -750 { lab=#net2}
N 1220 -830 1340 -830 { lab=Vref}
N 1700 -960 1800 -960 { lab=Vin}
C {devices/lab_pin.sym} 1700 -1060 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 1700 -480 0 0 {name=l3 sig_type=std_logic lab=0}
C {devices/res.sym} 1700 -690 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1860 -740 0 1 {name=l4 sig_type=std_logic lab=Vout}
C {devices/isource.sym} 1810 -590 0 0 {name=I0 value=50m}
C {devices/res.sym} 1700 -590 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/launcher.sym} 810 -860 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 810 -810 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/code_shown.sym} 690 -750 0 0 {name=NGSPICE
only_toplevel=true
value=
"
.option wnflag=1 
.option savecurrents
VVc Vc 0 0.13
VVin Vin 0 2
VVref Vref 0 1.2
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
C {devices/ngspice_get_value.sym} 1820 -920 0 0 {name=r1 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs])"
descr="Vgs="}
C {devices/ngspice_get_value.sym} 1820 -860 0 0 {name=r3 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds])"
descr="Vds="}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1680 -790 0 0 {name=M1
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
C {devices/ngspice_get_value.sym} 1820 -830 0 0 {name=r2 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 1820 -800 0 0 {name=r4 node="i(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[id])"
descr="Id="}
C {/home/eslam/mabrains/Analog_blocks/testing/Ideal_Opamp.sym} 1480 -790 0 0 {name=x1}
C {devices/lab_pin.sym} 1220 -830 0 0 {name=l5 sig_type=std_logic lab=Vref}
C {devices/ngspice_get_value.sym} 1820 -890 0 0 {name=r9 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth])"
descr="Vth="}
C {devices/code.sym} 710 -1030 0 0 {name=SF_MODELS
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

v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1860 -880 1860 -820 { lab=#net1}
N 1660 -820 1860 -820 { lab=#net1}
N 1660 -880 1660 -820 { lab=#net1}
N 1860 -1070 1860 -940 { lab=vout}
N 1660 -1070 1660 -940 { lab=#net2}
N 1700 -1100 1820 -1100 { lab=#net2}
N 1860 -1180 1860 -1130 { lab=vdd}
N 1660 -1180 1860 -1180 { lab=vdd}
N 1660 -1180 1660 -1130 { lab=vdd}
N 1740 -1100 1740 -1040 { lab=#net2}
N 1660 -1040 1740 -1040 { lab=#net2}
N 1760 -820 1760 -770 { lab=#net1}
N 1760 -710 1760 -660 { lab=0}
N 1480 -740 1720 -740 { lab=#net3}
N 1440 -710 1440 -660 { lab=0}
N 1440 -660 1760 -660 { lab=0}
N 1440 -880 1440 -770 { lab=#net3}
N 1520 -820 1520 -740 { lab=#net3}
N 1440 -820 1520 -820 { lab=#net3}
N 1440 -1180 1440 -930 { lab=vdd}
N 1440 -1180 1660 -1180 { lab=vdd}
N 1570 -910 1620 -910 { lab=vp}
N 1900 -910 1970 -910 { lab=vn}
N 1860 -1000 2060 -1000 { lab=vout}
N 2040 -1000 2040 -940 { lab=vout}
N 2040 -880 2040 -660 { lab=0}
N 1760 -660 2040 -660 { lab=0}
N 1760 -740 1840 -740 { lab=0}
N 1840 -740 1840 -660 { lab=0}
N 1360 -740 1440 -740 { lab=0}
N 1360 -740 1360 -660 { lab=0}
N 1360 -660 1440 -660 { lab=0}
N 1860 -1100 1940 -1100 { lab=vdd}
N 1940 -1180 1940 -1100 { lab=vdd}
N 1860 -1180 1940 -1180 { lab=vdd}
N 1580 -1100 1660 -1100 { lab=vdd}
N 1580 -1180 1580 -1100 { lab=vdd}
N 1780 -910 1860 -910 { lab=0}
N 1660 -910 1780 -910 { lab=0}
C {devices/isource.sym} 1440 -910 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 1440 -1180 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1360 -660 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1570 -910 0 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 1970 -910 0 1 {name=l4 sig_type=std_logic lab=vn}
C {devices/lab_pin.sym} 2060 -1000 0 1 {name=l5 sig_type=std_logic lab=vout}
C {devices/capa.sym} 2040 -910 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 1110 -1070 0 0 {name=TT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} 950 -910 0 0 {name=NGSPICE
only_toplevel=true
value="
Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg 0 vn  DC -0.9 AC 1 
*.ac dec 10 1 10MEG
Vpos vp 0 DC 0.9 AC 0.1 SIN(0.9 0.1 1MEG)
Vneg 0 vn  DC -0.9 AC 0.1 SIN(-0.9 0.1 1MEG)
.tran 0.1u 2u
" }
C {devices/lab_pin.sym} 1760 -910 0 0 {name=l6 sig_type=std_logic lab=0}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1680 -1100 0 1 {name=M3
L=1
W=84
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1840 -1100 0 0 {name=M4
L=1
W=84
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1640 -910 0 0 {name=M1
L=1
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1880 -910 0 1 {name=M2
L=1
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1740 -740 0 0 {name=M5
L=1
W=9
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1460 -740 0 1 {name=M6
L=1
W=9
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}

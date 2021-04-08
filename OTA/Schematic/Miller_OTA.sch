v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1640 -1060 1640 -980 { lab=#net1}
N 1820 -1060 1820 -980 { lab=#net2}
N 1680 -1090 1780 -1090 { lab=#net1}
N 1700 -1090 1700 -1040 { lab=#net1}
N 1640 -1040 1700 -1040 { lab=#net1}
N 1820 -1180 1820 -1120 { lab=Vdd}
N 1640 -1180 1820 -1180 { lab=Vdd}
N 1640 -1180 1640 -1120 { lab=Vdd}
N 1540 -1090 1640 -1090 { lab=Vdd}
N 1540 -1180 1540 -1090 { lab=Vdd}
N 1540 -1180 1640 -1180 { lab=Vdd}
N 1820 -1090 1920 -1090 { lab=Vdd}
N 1920 -1180 1920 -1090 { lab=Vdd}
N 1820 -1180 1920 -1180 { lab=Vdd}
N 1640 -950 1820 -950 { lab=0}
N 1820 -920 1820 -860 { lab=#net3}
N 1640 -860 1820 -860 { lab=#net3}
N 1640 -920 1640 -860 { lab=#net3}
N 1860 -950 1920 -950 { lab=Vp}
N 1720 -860 1720 -810 { lab=#net3}
N 1720 -750 1720 -700 { lab=0}
N 1300 -780 1680 -780 { lab=#net4}
N 1820 -1020 2120 -1020 { lab=#net2}
N 2160 -990 2160 -810 { lab=Vout}
N 2160 -750 2160 -700 { lab=0}
N 1720 -700 2160 -700 { lab=0}
N 2160 -780 2240 -780 { lab=0}
N 2240 -780 2240 -700 { lab=0}
N 2160 -700 2240 -700 { lab=0}
N 1720 -780 1800 -780 { lab=0}
N 1800 -780 1800 -700 { lab=0}
N 2160 -1180 2160 -1050 { lab=Vdd}
N 1920 -1180 2160 -1180 { lab=Vdd}
N 2160 -1020 2240 -1020 { lab=Vdd}
N 2240 -1180 2240 -1020 { lab=Vdd}
N 2160 -1180 2240 -1180 { lab=Vdd}
N 1260 -750 1260 -700 { lab=0}
N 1260 -700 1720 -700 { lab=0}
N 1180 -780 1260 -780 { lab=0}
N 1180 -780 1180 -700 { lab=0}
N 1180 -700 1260 -700 { lab=0}
N 2020 -940 2040 -940 { lab=#net2}
N 2020 -1020 2020 -940 { lab=#net2}
N 2100 -940 2160 -940 { lab=Vout}
N 1260 -860 1260 -810 { lab=#net4}
N 1260 -1180 1260 -920 { lab=Vdd}
N 1260 -1180 1540 -1180 { lab=Vdd}
N 1650 -950 1650 -700 { lab=0}
N 1850 -780 2120 -780 { lab=#net4}
N 1850 -780 1850 -740 { lab=#net4}
N 1670 -740 1850 -740 { lab=#net4}
N 1670 -780 1670 -740 { lab=#net4}
N 1260 -830 1340 -830 { lab=#net4}
N 1340 -830 1340 -780 { lab=#net4}
N 2280 -940 2280 -920 { lab=Vout}
N 2160 -940 2280 -940 { lab=Vout}
N 2280 -860 2280 -700 { lab=0}
N 2240 -700 2280 -700 { lab=0}
N 2280 -940 2370 -940 { lab=Vout}
N 1540 -950 1600 -950 { lab=Vn}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1620 -950 0 0 {name=M1
L=1
W=30
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1840 -950 0 1 {name=M2
L=1
W=30
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1800 -1090 0 0 {name=M4
L=0.5
W=7.4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1660 -1090 0 1 {name=M3
L=0.5
W=7.4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1700 -780 0 0 {name=M5
L=1
W=10
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2140 -1020 0 0 {name=M6
L=0.5
W=75
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2140 -780 0 0 {name=M7
L=1
W=54
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1280 -780 0 1 {name=M8
L=1
W=10
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
C {devices/capa.sym} 2070 -940 1 1 {name=C1
m=1
value=900f
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} 1260 -890 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1260 -1180 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 1180 -700 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/capa.sym} 2280 -890 2 1 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1920 -950 0 1 {name=l4 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 2370 -940 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/code.sym} 1780 -1370 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 1960 -1370 0 0 {name=NGSPICE
only_toplevel=true
value="
Vsup vdd 0 1.8
Vpos vp 0 DC 0.9 AC 1 
Vneg 0 vn  DC -0.9 AC 1 
.ac dec 10 1 70MEG
*Vpos vp 0 SIN(0.9 1m 1Meg)
*Vneg 0 vn SIN(-0.9 1m 1Meg)
*.tran 0.05u 2u
*.noise v(vout) Vpos dec 10 1 70MEG Vneg dec 10 1 70MEG
" }
C {devices/lab_pin.sym} 1540 -950 0 0 {name=l3 sig_type=std_logic lab=Vn}

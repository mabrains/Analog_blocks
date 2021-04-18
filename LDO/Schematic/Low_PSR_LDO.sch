v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1380 -1180 1380 -1060 { lab=#net1}
N 1160 -1180 1160 -1060 { lab=#net2}
N 1380 -1000 1380 -940 { lab=0}
N 1160 -940 1380 -940 { lab=0}
N 1160 -1000 1160 -940 { lab=0}
N 1600 -980 1600 -940 { lab=0}
N 1380 -940 1600 -940 { lab=0}
N 1380 -1280 1380 -1240 { lab=#net3}
N 1160 -1280 1380 -1280 { lab=#net3}
N 1160 -1280 1160 -1240 { lab=#net3}
N 1270 -1330 1270 -1280 { lab=#net3}
N 1160 -1210 1380 -1210 { lab=#net4}
N 1270 -1360 1290 -1360 { lab=#net4}
N 1290 -1360 1290 -1210 { lab=#net4}
N 1600 -1010 1680 -1010 { lab=0}
N 1680 -1010 1680 -940 { lab=0}
N 1600 -940 1680 -940 { lab=0}
N 2000 -1280 2000 -1200 { lab=Vout}
N 2000 -1140 2000 -1080 { lab=#net5}
N 2000 -1020 2000 -940 { lab=0}
N 1680 -940 2000 -940 { lab=0}
N 1800 -1130 1800 -1100 { lab=#net6}
N 1600 -1100 1800 -1100 { lab=#net6}
N 1520 -1160 1760 -1160 { lab=#net1}
N 1520 -1160 1520 -1010 { lab=#net1}
N 1520 -1010 1560 -1010 { lab=#net1}
N 1380 -1160 1520 -1160 { lab=#net1}
N 1600 -1280 1600 -1040 { lab=#net6}
N 1520 -1310 1560 -1310 { lab=#net6}
N 1520 -1310 1520 -1260 { lab=#net6}
N 1520 -1260 1600 -1260 { lab=#net6}
N 1600 -1260 1760 -1260 { lab=#net6}
N 1760 -1300 1760 -1260 { lab=#net6}
N 1760 -1310 1760 -1300 { lab=#net6}
N 1760 -1310 1960 -1310 { lab=#net6}
N 2000 -1420 2000 -1340 { lab=Vdd}
N 1600 -1420 2000 -1420 { lab=Vdd}
N 1600 -1420 1600 -1340 { lab=Vdd}
N 1270 -1420 1600 -1420 { lab=Vdd}
N 1270 -1420 1270 -1390 { lab=Vdd}
N 1200 -1030 1340 -1030 { lab=#net2}
N 1240 -1100 1240 -1030 { lab=#net2}
N 1160 -1100 1240 -1100 { lab=#net2}
N 1380 -1030 1400 -1030 { lab=0}
N 1400 -1030 1400 -940 { lab=0}
N 1130 -1030 1160 -1030 { lab=0}
N 1130 -1030 1130 -940 { lab=0}
N 1130 -940 1160 -940 { lab=0}
N 1600 -1310 1630 -1310 { lab=Vdd}
N 1630 -1420 1630 -1310 { lab=Vdd}
N 2000 -1310 2030 -1310 { lab=Vdd}
N 2030 -1420 2030 -1310 { lab=Vdd}
N 2000 -1420 2030 -1420 { lab=Vdd}
N 1800 -1420 1800 -1190 { lab=Vdd}
N 1800 -1160 1840 -1160 { lab=Vdd}
N 1840 -1220 1840 -1160 { lab=Vdd}
N 1800 -1220 1840 -1220 { lab=Vdd}
N 2000 -1240 2240 -1240 { lab=Vout}
N 2110 -1240 2110 -1150 { lab=Vout}
N 2110 -1090 2110 -940 { lab=0}
N 2000 -940 2110 -940 { lab=0}
N 1860 -1100 2000 -1100 { lab=#net5}
N 1860 -1100 1860 -1060 { lab=#net5}
N 1440 -1060 1860 -1060 { lab=#net5}
N 1440 -1210 1440 -1060 { lab=#net5}
N 1420 -1210 1440 -1210 { lab=#net5}
N 1060 -1210 1120 -1210 { lab=Vref}
N 900 -1360 1230 -1360 { lab=#net7}
N 860 -1420 860 -1390 { lab=Vdd}
N 860 -1420 1270 -1420 { lab=Vdd}
N 860 -1330 860 -1200 { lab=#net7}
N 860 -1140 860 -940 { lab=0}
N 860 -940 1130 -940 { lab=0}
N 820 -1360 860 -1360 { lab=Vdd}
N 820 -1420 820 -1360 { lab=Vdd}
N 820 -1420 860 -1420 { lab=Vdd}
N 940 -1360 940 -1300 { lab=#net7}
N 860 -1300 940 -1300 { lab=#net7}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1580 -1010 0 0 {name=M1
L=0.5
W=36
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1580 -1310 0 0 {name=M2
L=0.5
W=60
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1780 -1160 0 0 {name=M3
L=0.5
W=2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1140 -1210 0 0 {name=M4
L=0.5
W=76
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1400 -1210 0 1 {name=M5
L=0.5
W=76
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1180 -1030 0 1 {name=M6
L=0.5
W=13
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1360 -1030 0 0 {name=M7
L=0.5
W=13
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1250 -1360 0 0 {name=M8
L=0.5
W=35
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1980 -1310 0 0 {name=M9
L=0.5
W=60
nf=1
mult=100
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/res.sym} 2000 -1170 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2000 -1050 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 2110 -1120 0 0 {name=C1
m=1
value=3u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2240 -1240 0 1 {name=l2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 1060 -1210 0 0 {name=l3 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 520 -1360 0 0 {name=NGSPICE
only_toplevel=true
value="
Vinput Vin 0 2.5
RefV Vref 0 0.42
.DC vinput 0 3 0.1
*Vinput vin 0 DC 1.8 AC 1
*.AC dec 10 1 100MEG
.end
" }
C {devices/code.sym} 530 -1125 0 0 {name=TT_MODELS
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 880 -1360 0 1 {name=M10
L=0.5
W=35
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
C {devices/isource.sym} 860 -1170 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 820 -1420 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 860 -940 0 0 {name=l4 sig_type=std_logic lab=0}

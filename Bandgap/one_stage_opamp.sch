v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2020 -1500 2160 -1500 { lab=#net1}
N 1980 -1600 1980 -1530 { lab=#net1}
N 2200 -1600 2200 -1530 { lab=vout}
N 2060 -1560 2060 -1500 { lab=#net1}
N 1980 -1560 2060 -1560 { lab=#net1}
N 2200 -1470 2200 -1420 { lab=0}
N 1980 -1420 2200 -1420 { lab=0}
N 1980 -1470 1980 -1420 { lab=0}
N 2200 -1630 2200 -1600 { lab=vout}
N 1980 -1630 1980 -1600 { lab=#net1}
N 2200 -1720 2200 -1690 { lab=#net2}
N 1980 -1720 2200 -1720 { lab=#net2}
N 1980 -1720 1980 -1690 { lab=#net2}
N 2090 -1740 2090 -1720 { lab=#net2}
N 1900 -1770 2050 -1770 { lab=#net3}
N 2090 -1840 2090 -1800 { lab=#net4}
N 1860 -1840 2090 -1840 { lab=#net4}
N 1780 -1840 1780 -1800 { lab=#net4}
N 1780 -1740 1780 -1710 { lab=#net3}
N 1640 -1840 1640 -1800 { lab=#net4}
N 1640 -1840 1780 -1840 { lab=#net4}
N 1640 -1740 1640 -1420 { lab=0}
N 1720 -1420 1980 -1420 { lab=0}
N 1780 -1650 1780 -1420 { lab=0}
N 1640 -1420 1720 -1420 { lab=0}
N 1820 -1770 1900 -1770 { lab=#net3}
N 1780 -1840 1860 -1840 { lab=#net4}
N 2240 -1660 2290 -1660 { lab=vin_min}
N 1900 -1660 1940 -1660 { lab=vin_plus}
N 2200 -1420 2290 -1420 { lab=0}
N 1840 -1770 1840 -1720 { lab=#net3}
N 1780 -1720 1840 -1720 { lab=#net3}
N 2200 -1600 2240 -1600 { lab=vout}
N 2240 -1540 2240 -1420 { lab=0}
N 2090 -1770 2140 -1770 { lab=#net4}
N 2140 -1840 2140 -1770 { lab=#net4}
N 2090 -1840 2140 -1840 { lab=#net4}
N 1740 -1770 1790 -1770 { lab=#net4}
N 1740 -1840 1740 -1770 { lab=#net4}
N 1980 -1660 2030 -1660 { lab=#net4}
N 2030 -1660 2200 -1660 { lab=#net4}
N 2140 -1770 2140 -1660 { lab=#net4}
N 2200 -1500 2240 -1500 { lab=0}
N 1900 -1600 1900 -1580 { lab=#net5}
N 2290 -1600 2290 -1580 { lab=#net6}
N 2290 -1520 2290 -1420 { lab=0}
N 1900 -1520 1900 -1420 { lab=0}
N 1900 -1500 1980 -1500 { lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2180 -1500 0 0 {name=M1
L=0.6
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2000 -1500 0 1 {name=M2
L=0.6
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1960 -1660 0 0 {name=M3
L=0.8
W=24
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2220 -1660 0 1 {name=M4
L=0.8
W=24
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2070 -1770 0 0 {name=M5
L=1.2
W=52
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1800 -1770 0 1 {name=M6
L=1.2
W=26
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/isource.sym} 1780 -1680 0 0 {name=I0 value=10u}
C {devices/vsource.sym} 1640 -1770 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 1640 -1420 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/vsource_arith.sym} 1900 -1630 0 0 {name=E1 VOL="'2*cos(time*time*time*1e11)'" }
C {devices/vsource_arith.sym} 2290 -1630 2 0 {name=E2 VOL="'2*cos(time*time*time*1e11)'" cos(V(IN))}
C {devices/lab_pin.sym} 1900 -1660 0 0 {name=l2 sig_type=std_logic lab=vin_plus}
C {devices/lab_pin.sym} 2290 -1660 0 1 {name=l3 sig_type=std_logic lab=vin_min}
C {devices/code_shown.sym} 2430 -1690 0 0 {name=NGSPICE
only_toplevel=true
value="
.ac dec 20 10 100Meg
.end
" }
C {devices/lab_pin.sym} 2240 -1600 0 1 {name=l4 sig_type=std_logic lab=vout}
C {devices/code.sym} 2420 -1550 0 0 {name=TT_MODELS
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
C {devices/capa.sym} 2240 -1570 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1900 -1550 0 0 {name=V2 value=0.1}
C {devices/vsource.sym} 2290 -1550 0 0 {name=V3 value=0.1}

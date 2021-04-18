v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -2560 -1120 -2560 -1040 { lab=#net1}
N -2380 -1120 -2380 -1040 { lab=#net2}
N -2520 -1150 -2420 -1150 { lab=#net1}
N -2500 -1150 -2500 -1100 { lab=#net1}
N -2560 -1100 -2500 -1100 { lab=#net1}
N -2380 -1240 -2380 -1180 { lab=Vdd}
N -2560 -1240 -2380 -1240 { lab=Vdd}
N -2560 -1240 -2560 -1180 { lab=Vdd}
N -2660 -1150 -2560 -1150 { lab=Vdd}
N -2660 -1240 -2660 -1150 { lab=Vdd}
N -2660 -1240 -2560 -1240 { lab=Vdd}
N -2380 -1150 -2280 -1150 { lab=Vdd}
N -2280 -1240 -2280 -1150 { lab=Vdd}
N -2380 -1240 -2280 -1240 { lab=Vdd}
N -2560 -1010 -2380 -1010 { lab=0}
N -2380 -980 -2380 -920 { lab=#net3}
N -2560 -920 -2380 -920 { lab=#net3}
N -2560 -980 -2560 -920 { lab=#net3}
N -2480 -920 -2480 -870 { lab=#net3}
N -2480 -810 -2480 -760 { lab=0}
N -2480 -840 -2400 -840 { lab=0}
N -2400 -840 -2400 -760 { lab=0}
N -2790 -810 -2790 -760 { lab=0}
N -2870 -840 -2790 -840 { lab=0}
N -2870 -840 -2870 -760 { lab=0}
N -2790 -920 -2790 -870 { lab=#net4}
N -2790 -1240 -2790 -980 { lab=Vdd}
N -2550 -1010 -2550 -760 { lab=0}
N -2790 -890 -2710 -890 { lab=#net4}
N -2710 -890 -2710 -840 { lab=#net4}
N -2660 -1010 -2600 -1010 { lab=#net5}
N -2400 -760 -2400 -720 { lab=0}
N -2480 -760 -2480 -720 { lab=0}
N -2550 -760 -2550 -720 { lab=0}
N -2790 -760 -2790 -720 { lab=0}
N -2870 -760 -2870 -720 { lab=0}
N -2530 -840 -2520 -840 { lab=#net4}
N -2750 -840 -2530 -840 { lab=#net4}
N -2790 -1240 -2660 -1240 { lab=Vdd}
N -2340 -1010 -2290 -1010 { lab=Vref}
N -2160 -1030 -2160 -970 { lab=vout}
N -2160 -910 -2160 -850 { lab=#net5}
N -2160 -1000 -2020 -1000 { lab=vout}
N -2160 -850 -2160 -810 { lab=#net5}
N -2160 -750 -2160 -720 { lab=0}
N -2160 -1060 -2100 -1060 { lab=Vdd}
N -2160 -1240 -2160 -1090 { lab=Vdd}
N -2100 -1240 -2100 -1060 { lab=Vdd}
N -2160 -1240 -2100 -1240 { lab=Vdd}
N -2060 -1000 -2060 -930 { lab=vout}
N -2060 -870 -2060 -840 { lab=#net6}
N -2060 -780 -2060 -720 { lab=0}
N -2160 -720 -2060 -720 { lab=0}
N -2280 -1240 -2160 -1240 { lab=Vdd}
N -2380 -1060 -2200 -1060 { lab=#net2}
N -2870 -720 -2160 -720 { lab=0}
N -2660 -1010 -2660 -900 { lab=#net5}
N -2660 -900 -2660 -880 { lab=#net5}
N -2660 -880 -2160 -880 { lab=#net5}
C {devices/code_shown.sym} -2310 -1400 0 0 {name=NGSPICE
only_toplevel=true
value="
Vinput Vin 0 2.7
VVRef Vref 0 1.25
.DC vinput 0 5 0.1
*Vinput vin 0 DC 1.8 AC 1
*.AC dec 10 1 100MEG
.end
" }
C {devices/code.sym} -2620 -1375 0 0 {name=TT_MODELS
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
C {devices/isource.sym} -2790 -950 0 0 {name=I0 value=100u}
C {devices/lab_pin.sym} -2790 -1240 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -2870 -720 0 0 {name=l3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -2290 -1010 0 1 {name=l7 sig_type=std_logic lab=Vref}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2580 -1010 0 0 {name=M2
L=0.5
W=12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2360 -1010 0 1 {name=M3
L=0.5
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2540 -1150 0 1 {name=M4
L=1
W=68
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2400 -1150 0 0 {name=M5
L=1
W=68
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2500 -840 0 0 {name=M7
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2770 -840 0 1 {name=M8
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} -2160 -940 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -2160 -780 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -2020 -1000 0 1 {name=l4 sig_type=std_logic lab=vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2180 -1060 0 0 {name=M1
L=0.5
W=72
nf=1
mult=1000
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/capa.sym} -2060 -900 0 0 {name=C2
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -2060 -810 0 0 {name=R3
value=0.1
footprint=1206
device=resistor
m=1}

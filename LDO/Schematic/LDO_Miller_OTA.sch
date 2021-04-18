v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1790 -1020 -1790 -960 { lab=vout}
N -1790 -900 -1790 -840 { lab=#net1}
N -1790 -990 -1650 -990 { lab=vout}
N -1790 -840 -1790 -800 { lab=#net1}
N -1790 -740 -1790 -710 { lab=0}
N -1790 -1050 -1730 -1050 { lab=Vin}
N -1790 -1230 -1790 -1080 { lab=Vin}
N -1730 -1230 -1730 -1050 { lab=Vin}
N -1790 -1230 -1730 -1230 { lab=Vin}
N -1920 -1230 -1790 -1230 { lab=Vin}
N -1920 -710 -1790 -710 { lab=0}
N -1860 -1050 -1830 -1050 { lab=#net2}
N -1690 -990 -1690 -920 { lab=vout}
N -1690 -860 -1690 -830 { lab=#net3}
N -1690 -770 -1690 -710 { lab=0}
N -1790 -710 -1690 -710 { lab=0}
N -1740 -990 -1740 -960 { lab=vout}
N -2520 -1110 -2520 -1030 { lab=#net4}
N -2340 -1110 -2340 -1030 { lab=#net5}
N -2480 -1140 -2380 -1140 { lab=#net4}
N -2460 -1140 -2460 -1090 { lab=#net4}
N -2520 -1090 -2460 -1090 { lab=#net4}
N -2340 -1230 -2340 -1170 { lab=Vin}
N -2520 -1230 -2340 -1230 { lab=Vin}
N -2520 -1230 -2520 -1170 { lab=Vin}
N -2620 -1140 -2520 -1140 { lab=Vin}
N -2620 -1230 -2620 -1140 { lab=Vin}
N -2620 -1230 -2520 -1230 { lab=Vin}
N -2340 -1140 -2240 -1140 { lab=Vin}
N -2240 -1230 -2240 -1140 { lab=Vin}
N -2340 -1230 -2240 -1230 { lab=Vin}
N -2520 -1000 -2340 -1000 { lab=0}
N -2340 -970 -2340 -910 { lab=#net6}
N -2520 -910 -2340 -910 { lab=#net6}
N -2520 -970 -2520 -910 { lab=#net6}
N -2440 -910 -2440 -860 { lab=#net6}
N -2440 -800 -2440 -750 { lab=0}
N -2340 -1070 -2040 -1070 { lab=#net5}
N -2000 -1040 -2000 -860 { lab=#net2}
N -2000 -800 -2000 -750 { lab=0}
N -2000 -830 -1920 -830 { lab=0}
N -1920 -830 -1920 -750 { lab=0}
N -2440 -830 -2360 -830 { lab=0}
N -2360 -830 -2360 -750 { lab=0}
N -2000 -1230 -2000 -1100 { lab=Vin}
N -2240 -1230 -2000 -1230 { lab=Vin}
N -2000 -1070 -1920 -1070 { lab=Vin}
N -1920 -1230 -1920 -1070 { lab=Vin}
N -2000 -1230 -1920 -1230 { lab=Vin}
N -2750 -800 -2750 -750 { lab=0}
N -2830 -830 -2750 -830 { lab=0}
N -2830 -830 -2830 -750 { lab=0}
N -2140 -990 -2120 -990 { lab=#net5}
N -2140 -1070 -2140 -990 { lab=#net5}
N -2060 -990 -2000 -990 { lab=#net2}
N -2750 -910 -2750 -860 { lab=#net7}
N -2750 -1230 -2750 -970 { lab=Vin}
N -2510 -1000 -2510 -750 { lab=0}
N -2310 -830 -2040 -830 { lab=#net7}
N -2310 -830 -2310 -790 { lab=#net7}
N -2490 -790 -2310 -790 { lab=#net7}
N -2750 -880 -2670 -880 { lab=#net7}
N -2670 -880 -2670 -830 { lab=#net7}
N -2000 -990 -1880 -990 { lab=#net2}
N -2620 -1000 -2560 -1000 { lab=Vref}
N -1920 -750 -1920 -710 { lab=0}
N -2000 -750 -2000 -710 { lab=0}
N -2360 -750 -2360 -710 { lab=0}
N -2440 -750 -2440 -710 { lab=0}
N -2510 -750 -2510 -710 { lab=0}
N -2750 -750 -2750 -710 { lab=0}
N -2830 -750 -2830 -710 { lab=0}
N -1860 -1050 -1860 -990 { lab=#net2}
N -1880 -990 -1860 -990 { lab=#net2}
N -2830 -710 -1920 -710 { lab=0}
N -2490 -830 -2490 -790 { lab=#net7}
N -2490 -830 -2480 -830 { lab=#net7}
N -2710 -830 -2490 -830 { lab=#net7}
N -2750 -1230 -2620 -1230 { lab=Vin}
N -2240 -880 -1790 -880 { lab=#net1}
N -2240 -1000 -2240 -880 { lab=#net1}
N -2300 -1000 -2240 -1000 { lab=#net1}
N -1740 -900 -1740 -880 { lab=#net1}
N -1790 -880 -1740 -880 { lab=#net1}
C {devices/res.sym} -1790 -930 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -1790 -770 0 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -1650 -990 0 1 {name=l4 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} -2270 -1390 0 0 {name=NGSPICE
only_toplevel=true
value="
*Vinput Vin 0 2.5
VVRef Vref 0 1.1
*.DC vinput 0 5 0.1
Vinput vin 0 DC 5 AC 1
.AC dec 10 1 100MEG
.end
" }
C {devices/code.sym} -2580 -1365 0 0 {name=TT_MODELS
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1810 -1050 0 0 {name=M1
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
C {devices/capa.sym} -1690 -890 0 0 {name=C2
m=1
value=20u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -1690 -800 0 0 {name=R3
value=30m
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -1740 -930 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -2090 -990 1 1 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} -2750 -940 0 0 {name=I0 value=30u}
C {devices/lab_pin.sym} -2750 -1230 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2830 -710 0 0 {name=l3 sig_type=std_logic lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2540 -1000 0 0 {name=M2
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2320 -1000 0 1 {name=M3
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2500 -1140 0 1 {name=M4
L=0.5
W=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2360 -1140 0 0 {name=M5
L=0.5
W=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2020 -1070 0 0 {name=M6
L=0.5
W=48
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2460 -830 0 0 {name=M7
L=0.5
W=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2730 -830 0 1 {name=M8
L=0.5
W=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -2020 -830 0 0 {name=M9
L=0.5
W=16
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
C {devices/lab_pin.sym} -2620 -1000 0 0 {name=l2 sig_type=std_logic lab=Vref}

v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2160 -1070 2160 -1020 { lab=#net1}
N 2160 -960 2160 -920 { lab=0}
N 2100 -920 2160 -920 { lab=0}
N 2100 -1220 2160 -1220 { lab=vdd}
N 2160 -1220 2160 -1130 { lab=vdd}
N 2080 -1100 2120 -1100 { lab=#net1}
N 2080 -1100 2080 -1040 { lab=#net1}
N 2080 -1040 2160 -1040 { lab=#net1}
N 2160 -1100 2240 -1100 { lab=vdd}
N 2240 -1160 2240 -1100 { lab=vdd}
N 2160 -1160 2240 -1160 { lab=vdd}
N 2420 -970 2420 -920 { lab=0}
N 2160 -920 2420 -920 { lab=0}
N 2420 -1080 2420 -1030 { lab=#net2}
N 2340 -1000 2380 -1000 { lab=#net2}
N 2340 -1060 2340 -1000 { lab=#net2}
N 2340 -1060 2420 -1060 { lab=#net2}
N 2420 -1220 2420 -1140 { lab=vdd}
N 2160 -1220 2420 -1220 { lab=vdd}
N 2420 -1000 2500 -1000 { lab=0}
N 2500 -1000 2500 -920 { lab=0}
N 2420 -920 2500 -920 { lab=0}
N 2600 -1070 2600 -1020 { lab=#net3}
N 2600 -960 2600 -920 { lab=0}
N 2500 -920 2600 -920 { lab=0}
N 2520 -1100 2560 -1100 { lab=#net3}
N 2600 -1160 2600 -1130 { lab=vdd}
N 2600 -1220 2600 -1160 { lab=vdd}
N 2420 -1220 2600 -1220 { lab=vdd}
N 2520 -1100 2520 -1040 { lab=#net3}
N 2520 -1040 2600 -1040 { lab=#net3}
N 2600 -1100 2700 -1100 { lab=vdd}
N 2700 -1180 2700 -1100 { lab=vdd}
N 2700 -1220 2700 -1180 { lab=vdd}
N 2600 -1220 2700 -1220 { lab=vdd}
N 2800 -970 2800 -920 { lab=0}
N 2600 -920 2800 -920 { lab=0}
N 2720 -1000 2760 -1000 { lab=#net4}
N 2720 -1060 2720 -1000 { lab=#net4}
N 2720 -1060 2800 -1060 { lab=#net4}
N 2800 -1060 2800 -1030 { lab=#net4}
N 2800 -1000 2810 -1000 { lab=0}
N 2810 -1000 2810 -920 { lab=0}
N 2800 -920 2810 -920 { lab=0}
N 2800 -1090 2800 -1060 { lab=#net4}
N 2800 -1220 2800 -1150 { lab=vdd}
N 2700 -1220 2800 -1220 { lab=vdd}
N 2970 -1070 2970 -1020 { lab=#net5}
N 2970 -960 2970 -920 { lab=0}
N 2890 -1100 2930 -1100 { lab=#net5}
N 2970 -1160 2970 -1130 { lab=vdd}
N 2970 -1220 2970 -1160 { lab=vdd}
N 2890 -1100 2890 -1040 { lab=#net5}
N 2890 -1040 2970 -1040 { lab=#net5}
N 2970 -1100 3070 -1100 { lab=vdd}
N 3070 -1180 3070 -1100 { lab=vdd}
N 3070 -1220 3070 -1180 { lab=vdd}
N 2970 -1220 3070 -1220 { lab=vdd}
N 3170 -970 3170 -920 { lab=0}
N 2970 -920 3170 -920 { lab=0}
N 3090 -1000 3130 -1000 { lab=#net6}
N 3090 -1060 3090 -1000 { lab=#net6}
N 3090 -1060 3170 -1060 { lab=#net6}
N 3170 -1060 3170 -1030 { lab=#net6}
N 3170 -1000 3180 -1000 { lab=0}
N 3180 -1000 3180 -920 { lab=0}
N 3170 -920 3180 -920 { lab=0}
N 3170 -1090 3170 -1060 { lab=#net6}
N 3170 -1220 3170 -1150 { lab=vdd}
N 3070 -1220 3170 -1220 { lab=vdd}
N 2810 -920 2970 -920 { lab=0}
N 2800 -1220 2970 -1220 { lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 2140 -1100 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {devices/isource.sym} 2160 -990 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 2100 -1220 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2100 -920 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/code.sym} 1880 -1220 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 1760 -1050 0 0 {name=NGSPICE
only_toplevel=true
value="
Vsup vdd 0 1.8
.op
" }
C {sky130_fd_pr/nfet_01v8.sym} 2400 -1000 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {devices/isource.sym} 2420 -1110 0 0 {name=I1 value=50u}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2580 -1100 0 0 {name=M3
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 2600 -990 0 0 {name=I2 value=50u}
C {devices/isource.sym} 2800 -1120 0 0 {name=I3 value=50u}
C {devices/isource.sym} 2970 -990 0 0 {name=I4 value=50u}
C {devices/isource.sym} 3170 -1120 0 0 {name=I5 value=50u}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 3150 -1000 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2780 -1000 0 0 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2950 -1100 0 0 {name=M4
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
model=pfet_g5v0d10v5
spiceprefix=X
}

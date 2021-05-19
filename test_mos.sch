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
N 2320 -970 2320 -920 { lab=0}
N 2320 -1080 2320 -1030 { lab=#net2}
N 2240 -1000 2280 -1000 { lab=#net2}
N 2240 -1060 2240 -1000 { lab=#net2}
N 2240 -1060 2320 -1060 { lab=#net2}
N 2320 -1220 2320 -1140 { lab=vdd}
N 2320 -1000 2400 -1000 { lab=0}
N 2400 -1000 2400 -920 { lab=0}
N 2320 -920 2400 -920 { lab=0}
N 2470 -1070 2470 -1020 { lab=#net3}
N 2470 -960 2470 -920 { lab=0}
N 2390 -1100 2430 -1100 { lab=#net3}
N 2470 -1160 2470 -1130 { lab=vdd}
N 2470 -1220 2470 -1160 { lab=vdd}
N 2390 -1100 2390 -1040 { lab=#net3}
N 2390 -1040 2470 -1040 { lab=#net3}
N 2470 -1100 2570 -1100 { lab=vdd}
N 2570 -1180 2570 -1100 { lab=vdd}
N 2570 -1220 2570 -1180 { lab=vdd}
N 2470 -1220 2570 -1220 { lab=vdd}
N 2670 -970 2670 -920 { lab=0}
N 2470 -920 2670 -920 { lab=0}
N 2590 -1000 2630 -1000 { lab=#net4}
N 2590 -1060 2590 -1000 { lab=#net4}
N 2590 -1060 2670 -1060 { lab=#net4}
N 2670 -1060 2670 -1030 { lab=#net4}
N 2670 -1000 2680 -1000 { lab=0}
N 2680 -1000 2680 -920 { lab=0}
N 2670 -920 2680 -920 { lab=0}
N 2670 -1090 2670 -1060 { lab=#net4}
N 2670 -1220 2670 -1150 { lab=vdd}
N 2570 -1220 2670 -1220 { lab=vdd}
N 2840 -1070 2840 -1020 { lab=#net5}
N 2840 -960 2840 -920 { lab=0}
N 2760 -1100 2800 -1100 { lab=#net5}
N 2840 -1160 2840 -1130 { lab=vdd}
N 2840 -1220 2840 -1160 { lab=vdd}
N 2760 -1100 2760 -1040 { lab=#net5}
N 2760 -1040 2840 -1040 { lab=#net5}
N 2840 -1100 2940 -1100 { lab=vdd}
N 2940 -1180 2940 -1100 { lab=vdd}
N 2940 -1220 2940 -1180 { lab=vdd}
N 2840 -1220 2940 -1220 { lab=vdd}
N 3040 -970 3040 -920 { lab=0}
N 2840 -920 3040 -920 { lab=0}
N 2960 -1000 3000 -1000 { lab=#net6}
N 2960 -1060 2960 -1000 { lab=#net6}
N 2960 -1060 3040 -1060 { lab=#net6}
N 3040 -1060 3040 -1030 { lab=#net6}
N 3040 -1000 3050 -1000 { lab=0}
N 3050 -1000 3050 -920 { lab=0}
N 3040 -920 3050 -920 { lab=0}
N 3040 -1090 3040 -1060 { lab=#net6}
N 3040 -1220 3040 -1150 { lab=vdd}
N 2940 -1220 3040 -1220 { lab=vdd}
N 2680 -920 2840 -920 { lab=0}
N 2670 -1220 2840 -1220 { lab=vdd}
N 2160 -1220 2470 -1220 { lab=vdd}
N 2160 -920 2470 -920 { lab=0}
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
C {sky130_fd_pr/nfet_01v8.sym} 2300 -1000 0 0 {name=M2
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
C {devices/isource.sym} 2320 -1110 0 0 {name=I1 value=50u}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2450 -1100 0 0 {name=M3
L=1
W=5
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
C {devices/isource.sym} 2470 -990 0 0 {name=I2 value=20u}
C {devices/isource.sym} 2670 -1120 0 0 {name=I3 value=20u}
C {devices/isource.sym} 2840 -990 0 0 {name=I4 value=20u}
C {devices/isource.sym} 3040 -1120 0 0 {name=I5 value=20u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2650 -1000 0 0 {name=M4
L=1
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2820 -1100 0 0 {name=M5
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 3020 -1000 0 0 {name=M6
L=0.5
W=5
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

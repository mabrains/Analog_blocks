v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -360 -340 -360 -310 { lab=vd1}
N -460 -280 -400 -280 { lab=0}
N -460 -280 -460 -200 { lab=0}
N -460 -200 -360 -200 { lab=0}
N -360 -250 -360 -200 { lab=0}
N -360 -200 -360 -180 { lab=0}
N -580 -570 -580 -540 { lab=#net1}
N -580 -480 -580 -440 { lab=0}
N -360 -330 -270 -330 { lab=vd1}
N -360 -280 -290 -280 { lab=0}
N -290 -280 -290 -200 { lab=0}
N -360 -200 -290 -200 { lab=0}
N -360 -350 -360 -340 { lab=vd1}
N -360 -410 -360 -350 { lab=vd1}
N -580 -640 -580 -570 { lab=#net1}
N 50 -270 110 -270 { lab=0}
N 50 -190 150 -190 { lab=0}
N 150 -240 150 -190 { lab=0}
N 150 -190 150 -170 { lab=0}
N 150 -270 220 -270 { lab=0}
N 220 -270 220 -190 { lab=0}
N 150 -190 220 -190 { lab=0}
N 30 -400 30 -340 { lab=vdn}
N -30 -270 50 -270 { lab=0}
N -70 -240 -70 -190 { lab=0}
N -70 -190 50 -190 { lab=0}
N -130 -270 -70 -270 { lab=0}
N -130 -270 -130 -190 { lab=0}
N -130 -190 -70 -190 { lab=0}
N -70 -340 30 -340 { lab=vdn}
N -70 -340 -70 -300 { lab=vdn}
N 150 -340 150 -300 { lab=vdn}
N 30 -340 150 -340 { lab=vdn}
N -80 -380 30 -380 { lab=vdn}
N 30 -420 30 -400 { lab=vdn}
N 30 -530 30 -480 { lab=v2}
N 30 -570 30 -530 { lab=v2}
N -320 -600 -10 -600 { lab=#net2}
N -360 -570 -360 -410 { lab=vd1}
N -360 -720 -360 -630 { lab=#net2}
N 30 -720 30 -630 { lab=#net3}
N -320 -750 -10 -750 { lab=#net3}
N -240 -680 -240 -600 { lab=#net2}
N -360 -680 -240 -680 { lab=#net2}
N 30 -840 30 -780 { lab=#net1}
N -360 -840 30 -840 { lab=#net1}
N -360 -840 -360 -780 { lab=#net1}
N -580 -880 -580 -640 { lab=#net1}
N -580 -880 -200 -880 { lab=#net1}
N -200 -880 -200 -840 { lab=#net1}
N -120 -750 -120 -680 { lab=#net3}
N -120 -680 30 -680 { lab=#net3}
N -90 -520 30 -520 { lab=v2}
N -470 -750 -360 -750 { lab=#net1}
N -470 -840 -470 -750 { lab=#net1}
N -470 -840 -360 -840 { lab=#net1}
N 30 -750 110 -750 { lab=#net1}
N 110 -840 110 -750 { lab=#net1}
N 30 -840 110 -840 { lab=#net1}
N 30 -600 180 -600 { lab=0}
N 180 -600 180 -270 { lab=0}
N -440 -600 -360 -600 { lab=0}
N -440 -600 -440 -280 { lab=0}
N 180 -750 280 -750 { lab=#net3}
N 180 -750 180 -690 { lab=#net3}
N 30 -690 180 -690 { lab=#net3}
N 320 -840 320 -780 { lab=#net1}
N 110 -840 320 -840 { lab=#net1}
N 320 -750 410 -750 { lab=#net1}
N 410 -840 410 -750 { lab=#net1}
N 320 -840 410 -840 { lab=#net1}
N 320 -720 320 -540 { lab=#net4}
N 320 -480 320 -410 { lab=0}
N 320 -410 320 -200 { lab=0}
N 320 -200 320 -190 { lab=0}
N 220 -190 320 -190 { lab=0}
N 250 -620 320 -620 {}
C {/home/eslam/xschem_git/xschem_library/devices/vsource.sym} -580 -510 0 0 {name=v1 value=3.3}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -270 -330 0 1 {name=l5 sig_type=std_logic lab=vd1}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -360 -180 0 0 {name=l1 sig_type=std_logic lab=0}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -580 -440 0 0 {name=l4 sig_type=std_logic lab=0}
C {sky130_fd_pr/pnp_05v5.sym} -380 -280 0 0 {name=Q2
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} 150 -170 0 0 {name=l3 sig_type=std_logic lab=0}
C {sky130_fd_pr/pnp_05v5.sym} 130 -270 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -50 -270 0 1 {name=Q3
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} 40 -270 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -80 -380 0 0 {name=l7 sig_type=std_logic lab=vdn}
C {devices/code.sym} -820 -330 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} -860 -570 0 0 {name=NGSPICE
only_toplevel=true
value="
.DC TEMP -40 125 25
.end
" }
C {sky130_fd_pr/nfet_01v8.sym} 10 -600 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} -340 -600 0 1 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 10 -750 0 0 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} -340 -750 0 1 {name=M4
L=0.15
W=1
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
C {devices/res.sym} 30 -450 0 0 {name=R1
value=3.6k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -90 -520 0 0 {name=l6 sig_type=std_logic lab=v2}
C {sky130_fd_pr/pfet_01v8.sym} 300 -750 0 0 {name=M5
L=0.15
W=1
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
C {devices/res.sym} 320 -510 0 0 {name=R2
value=3.6k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 250 -620 0 0 {name=l8 sig_type=std_logic lab=PTAT}

v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 -450 -220 -420 { lab=vd1}
N -320 -390 -260 -390 { lab=0}
N -320 -390 -320 -310 { lab=0}
N -320 -310 -220 -310 { lab=0}
N -220 -360 -220 -310 { lab=0}
N -220 -310 -220 -290 { lab=0}
N -220 -600 -220 -560 { lab=vdd}
N -440 -550 -440 -520 { lab=vdd}
N -440 -460 -440 -420 { lab=0}
N -220 -440 -130 -440 { lab=vd1}
N -220 -390 -150 -390 { lab=0}
N -150 -390 -150 -310 { lab=0}
N -220 -310 -150 -310 { lab=0}
N -220 -460 -220 -450 { lab=vd1}
N -220 -520 -220 -460 { lab=vd1}
N -440 -620 -440 -550 { lab=vdd}
N -440 -620 -220 -620 { lab=vdd}
N -220 -620 -220 -600 { lab=vdd}
N 190 -380 250 -380 { lab=0}
N 190 -300 290 -300 { lab=0}
N 290 -350 290 -300 { lab=0}
N 290 -300 290 -280 { lab=0}
N 170 -590 170 -550 { lab=vdd}
N 290 -380 360 -380 { lab=0}
N 360 -380 360 -300 { lab=0}
N 290 -300 360 -300 { lab=0}
N 170 -510 170 -450 { lab=vdn}
N 110 -380 190 -380 { lab=0}
N 70 -350 70 -300 { lab=0}
N 70 -300 190 -300 { lab=0}
N 10 -380 70 -380 { lab=0}
N 10 -380 10 -300 { lab=0}
N 10 -300 70 -300 { lab=0}
N 70 -450 170 -450 { lab=vdn}
N 70 -450 70 -410 { lab=vdn}
N 290 -450 290 -410 { lab=vdn}
N 170 -450 290 -450 { lab=vdn}
N 170 -620 170 -590 { lab=vdd}
N -220 -620 170 -620 { lab=vdd}
N 60 -490 170 -490 { lab=vdn}
C {/home/eslam/xschem_git/xschem_library/devices/isource.sym} -220 -550 0 0 {name=i1 value=5u}
C {/home/eslam/xschem_git/xschem_library/devices/vsource.sym} -440 -490 0 0 {name=v1 value=3.3}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -130 -440 0 1 {name=l5 sig_type=std_logic lab=vd1}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -220 -290 0 0 {name=l1 sig_type=std_logic lab=0}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} -440 -420 0 0 {name=l4 sig_type=std_logic lab=0}
C {sky130_fd_pr/pnp_05v5.sym} -240 -390 0 0 {name=Q2
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/lab_pin.sym} -220 -590 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {/home/eslam/xschem_git/xschem_library/devices/isource.sym} 170 -540 0 0 {name=i2 value=5u}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} 290 -280 0 0 {name=l3 sig_type=std_logic lab=0}
C {sky130_fd_pr/pnp_05v5.sym} 270 -380 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 90 -380 0 1 {name=Q3
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} 180 -380 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 60 -490 0 0 {name=l7 sig_type=std_logic lab=vdn}
C {devices/code.sym} 410 -360 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 360 -580 0 0 {name=NGSPICE
only_toplevel=true
value="
.DC TEMP -40 125 25
.end
" }

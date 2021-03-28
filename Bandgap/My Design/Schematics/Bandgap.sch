v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1330 -730 -1130 -730 { lab=vdd}
N -1330 -310 -1230 -310 { lab=0}
N -470 -410 -470 -310 { lab=0}
N -1230 -310 -470 -310 { lab=0}
N -830 -400 -830 -310 { lab=0}
N -1210 -420 -1210 -310 { lab=0}
N -470 -730 -470 -570 { lab=vdd}
N -1130 -730 -470 -730 { lab=vdd}
N -1210 -730 -1210 -560 { lab=vdd}
N -830 -610 -830 -580 { lab=#net1}
N -830 -610 -250 -610 { lab=#net1}
N -250 -610 -250 -390 { lab=#net1}
N -410 -390 -250 -390 { lab=#net1}
N -410 -410 -410 -390 { lab=#net1}
N -680 -480 -550 -480 { lab=#net2}
N -550 -550 -550 -480 { lab=#net2}
N -680 -460 -550 -460 { lab=#net3}
N -550 -460 -550 -430 { lab=#net3}
N -1060 -470 -1030 -470 { lab=#net2}
N -1030 -470 -1030 -370 { lab=#net2}
N -1030 -370 -610 -370 { lab=#net2}
N -610 -480 -610 -370 { lab=#net2}
N -1060 -490 -990 -490 { lab=#net4}
N -990 -520 -990 -490 { lab=#net4}
N -680 -530 -650 -530 { lab=vref}
N -340 -490 -300 -490 { lab=#net5}
N -300 -660 -300 -490 { lab=#net5}
N -1040 -660 -300 -660 { lab=#net5}
N -1040 -660 -1040 -510 { lab=#net5}
N -1060 -510 -1040 -510 { lab=#net5}
C {devices/lab_pin.sym} -1330 -730 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -1330 -310 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/code.sym} -740 -260 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} -1180 -260 0 0 {name=NGSPICE
only_toplevel=true
value="
*vin vdd 0 dc 0 pwl(0 0 100u 0 200u 5 500u 5)
*.tran 100u 500u
vin vdd 0 3.3
.DC TEMP -40 125 10
*.DC vin 0 5 0.5
.end
" }
C {/home/eslam/Analog_Design/Bandgap/Schematics/Bandgap_core.sym} -830 -490 0 0 {name=x1}
C {/home/eslam/Analog_Design/Bandgap/Schematics/Start-up3.sym} -1210 -490 0 0 {name=x2}
C {/home/eslam/Analog_Design/Bandgap/Schematics/two_stage_opamp.sym} -450 -490 0 0 {name=x3}
C {devices/lab_pin.sym} -650 -530 0 1 {name=l3 sig_type=std_logic lab=vref}

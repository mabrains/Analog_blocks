v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -950 -260 -950 -210 { lab=0}
N -1170 -260 -1170 -210 { lab=0}
N -1170 -210 -950 -210 { lab=0}
N -1170 -350 -1170 -320 { lab=#net1}
N -1170 -440 -760 -440 { lab=#net2}
N -1170 -530 -1170 -410 { lab=#net2}
N -950 -540 -760 -540 { lab=#net3}
N -950 -570 -950 -540 { lab=#net3}
N -950 -540 -950 -320 { lab=#net3}
N -950 -710 -950 -630 { lab=Vref}
N -1170 -710 -950 -710 { lab=Vref}
N -1170 -710 -1170 -590 { lab=Vref}
N -540 -490 -470 -490 { lab=Vref}
N -470 -710 -470 -490 { lab=Vref}
N -950 -710 -470 -710 { lab=Vref}
N -660 -400 -660 -210 { lab=0}
N -950 -210 -660 -210 { lab=0}
N -660 -650 -660 -580 { lab=Vsupply}
N -1250 -710 -1170 -710 { lab=Vref}
N -910 -290 -880 -290 { lab=0}
N -880 -290 -880 -210 { lab=0}
N -1005 -290 -950 -290 { lab=0}
N -1005 -290 -1005 -210 { lab=0}
N -1170 -290 -1120 -290 { lab=0}
N -1120 -290 -1120 -210 { lab=0}
N -1240 -290 -1210 -290 { lab=0}
N -1240 -290 -1240 -210 { lab=0}
N -1240 -210 -1170 -210 { lab=0}
N -1330 -260 -1330 -210 { lab=0}
N -1290 -290 -1260 -290 { lab=0}
N -1260 -290 -1260 -210 { lab=0}
N -1385 -290 -1330 -290 { lab=0}
N -1385 -290 -1385 -210 { lab=0}
N -1475 -260 -1475 -210 { lab=0}
N -1435 -290 -1405 -290 { lab=0}
N -1405 -290 -1405 -210 { lab=0}
N -1530 -290 -1475 -290 { lab=0}
N -1530 -290 -1530 -210 { lab=0}
N -1620 -260 -1620 -210 { lab=0}
N -1580 -290 -1550 -290 { lab=0}
N -1550 -290 -1550 -210 { lab=0}
N -1675 -290 -1620 -290 { lab=0}
N -1675 -290 -1675 -210 { lab=0}
N -1765 -260 -1765 -210 { lab=0}
N -1725 -290 -1695 -290 { lab=0}
N -1695 -290 -1695 -210 { lab=0}
N -1820 -290 -1765 -290 { lab=0}
N -1820 -290 -1820 -210 { lab=0}
N -1910 -260 -1910 -210 { lab=0}
N -1870 -290 -1840 -290 { lab=0}
N -1840 -290 -1840 -210 { lab=0}
N -1965 -290 -1910 -290 { lab=0}
N -1965 -290 -1965 -210 { lab=0}
N -2055 -260 -2055 -210 { lab=0}
N -2015 -290 -1985 -290 { lab=0}
N -1985 -290 -1985 -210 { lab=0}
N -2110 -290 -2055 -290 { lab=0}
N -2110 -290 -2110 -210 { lab=0}
N -2200 -260 -2200 -210 { lab=0}
N -2160 -290 -2130 -290 { lab=0}
N -2130 -290 -2130 -210 { lab=0}
N -2255 -290 -2200 -290 { lab=0}
N -2255 -290 -2255 -210 { lab=0}
N -2255 -210 -1240 -210 { lab=0}
N -2200 -360 -2200 -315 { lab=#net1}
N -2200 -360 -1330 -360 { lab=#net1}
N -1330 -360 -1330 -320 { lab=#net1}
N -1330 -335 -1170 -335 { lab=#net1}
N -1475 -360 -1475 -320 { lab=#net1}
N -1620 -360 -1620 -320 { lab=#net1}
N -1765 -360 -1765 -320 { lab=#net1}
N -1910 -360 -1910 -320 { lab=#net1}
N -2055 -360 -2055 -320 { lab=#net1}
C {devices/res.sym} -1170 -560 0 0 {name=R1
value=23.5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -1170 -380 0 0 {name=R2
value=5.2k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -950 -600 0 0 {name=R3
value=23k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -2255 -210 0 0 {name=l1 sig_type=std_logic lab=0}
C {/home/eslam/Analog_Design/OTA/Schematic/Miller_OTA_PMOS.sym} -480 -340 0 0 {name=x1}
C {devices/lab_pin.sym} -660 -650 0 0 {name=l2 sig_type=std_logic lab=Vsupply}
C {devices/lab_pin.sym} -1250 -710 0 0 {name=l3 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} -1185 -935 0 0 {name=NGSPICE
only_toplevel=true
value="
vin Vsupply 0 1.8
*.DC TEMP -40 85 5
.DC vin 0 3 0.05
*vin vdd 0 dc 0 pwl(0 0 100u 0 200u 5 500u 5)
*.tran 100u 500u
.end
" }
C {devices/code.sym} -745 -915 0 0 {name=TT_MODELS
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
C {sky130_fd_pr/pnp_05v5.sym} -930 -290 0 1 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1190 -290 0 0 {name=Q2
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1310 -290 0 1 {name=Q3
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1455 -290 0 1 {name=Q4
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1600 -290 0 1 {name=Q5
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1745 -290 0 1 {name=Q6
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1890 -290 0 1 {name=Q7
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -2035 -290 0 1 {name=Q8
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -2180 -290 0 1 {name=Q9
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}

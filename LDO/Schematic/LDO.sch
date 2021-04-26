v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1490 -1720 -1490 -1660 { lab=vout1}
N -1490 -1600 -1490 -1540 { lab=#net1}
N -1490 -1690 -1350 -1690 { lab=vout1}
N -1490 -1540 -1490 -1500 { lab=#net1}
N -1490 -1440 -1490 -1410 { lab=0}
N -1490 -1750 -1430 -1750 { lab=Vin}
N -1490 -1930 -1490 -1780 { lab=Vin}
N -1430 -1930 -1430 -1750 { lab=Vin}
N -1490 -1930 -1430 -1930 { lab=Vin}
N -1390 -1690 -1390 -1620 { lab=vout1}
N -1390 -1560 -1390 -1530 { lab=#net2}
N -1390 -1470 -1390 -1410 { lab=0}
N -1490 -1410 -1390 -1410 { lab=0}
N -1740 -1930 -1490 -1930 { lab=Vin}
N -2040 -1410 -1490 -1410 { lab=0}
N -2240 -1930 -1740 -1930 { lab=Vin}
N -2230 -1410 -2040 -1410 { lab=0}
N -1520 -1470 -1510 -1470 { lab=0}
N -1520 -1630 -1520 -1470 { lab=0}
N -1520 -1630 -1510 -1630 { lab=0}
N -1640 -1690 -1640 -1670 { lab=vout1}
N -1640 -1690 -1490 -1690 { lab=vout1}
N -1520 -1470 -1520 -1410 { lab=0}
N -1640 -1610 -1640 -1580 { lab=#net1}
N -1940 -1580 -1490 -1580 { lab=#net1}
N -1550 -1750 -1530 -1750 { lab=#net3}
N -1720 -1930 -1720 -1840 { lab=Vin}
N -1720 -1660 -1720 -1410 { lab=0}
N -1940 -1710 -1940 -1580 { lab=#net1}
N -1940 -1710 -1890 -1710 { lab=#net1}
N -2040 -1790 -1890 -1790 { lab=#net4}
N -2190 -1930 -2190 -1870 { lab=Vin}
N -2190 -1710 -2190 -1410 { lab=0}
N -1940 -1750 -1890 -1750 { lab=#net4}
N -1940 -1790 -1940 -1750 { lab=#net4}
N -1490 -1160 -1490 -1100 { lab=vout}
N -1490 -1040 -1490 -980 { lab=#net5}
N -1490 -1130 -1350 -1130 { lab=vout}
N -1490 -980 -1490 -940 { lab=#net5}
N -1490 -880 -1490 -850 { lab=0}
N -1490 -1190 -1430 -1190 { lab=vout1}
N -1490 -1370 -1490 -1220 { lab=vout1}
N -1430 -1370 -1430 -1190 { lab=vout1}
N -1390 -1130 -1390 -1060 { lab=vout}
N -1390 -1000 -1390 -970 { lab=#net6}
N -1390 -910 -1390 -850 { lab=0}
N -1490 -850 -1390 -850 { lab=0}
N -2040 -850 -1490 -850 { lab=0}
N -2230 -850 -2040 -850 { lab=0}
N -1520 -910 -1510 -910 { lab=0}
N -1520 -1070 -1520 -910 { lab=0}
N -1520 -1070 -1510 -1070 { lab=0}
N -1640 -1130 -1640 -1110 { lab=vout}
N -1640 -1130 -1490 -1130 { lab=vout}
N -1520 -910 -1520 -850 { lab=0}
N -1640 -1050 -1640 -1020 { lab=#net5}
N -1940 -1020 -1490 -1020 { lab=#net5}
N -1715 -1370 -1715 -1285 { lab=vout1}
N -1715 -1095 -1715 -850 { lab=0}
N -1940 -1130 -1940 -1020 { lab=#net5}
N -1940 -1130 -1880 -1130 { lab=#net5}
N -2000 -1190 -1880 -1190 { lab=#net7}
N -1550 -1190 -1530 -1190 { lab=#net8}
N -1920 -1250 -1880 -1250 { lab=#net7}
N -1920 -1250 -1920 -1230 { lab=#net7}
N -2170 -1370 -2170 -1310 { lab=vout1}
N -2170 -1150 -2170 -850 { lab=0}
N -2070 -1230 -1920 -1230 { lab=#net7}
N -2000 -1230 -2000 -1190 { lab=#net7}
N -1350 -1690 -1350 -1370 { lab=vout1}
N -2170 -1370 -1350 -1370 { lab=vout1}
C {devices/capa.sym} -1390 -1590 0 0 {name=C2
m=1
value=20u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -1390 -1500 0 0 {name=R3
value=30m
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -2240 -1930 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2230 -1410 0 0 {name=l2 sig_type=std_logic lab=0}
C {sky130_fd_pr/res_xhigh_po.sym} -1490 -1630 0 0 {name=R1
W=1
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -1490 -1470 0 0 {name=R2
W=1
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} -1640 -1640 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1510 -1750 0 0 {name=M1
L=0.5
W=60
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
C {/home/eslam/Analog_Design/LDO/Schematic/Error_Amplifier.sym} -1730 -1750 0 0 {name=x1}
C {/home/eslam/Analog_Design/LDO/Schematic/BGR.sym} -2190 -1790 0 0 {name=x2}
C {devices/code_shown.sym} -1175 -1510 0 0 {name=NGSPICE
only_toplevel=true
value="
*DC input sweep
*VVin Vin 0 5
*.DC VVin 0 5 0.4
*PSRR analysis
VVin Vin 0 DC 5 AC 1
.AC dec 10 1 100MEG
*Transient analysis
*VVin Vin 0 PULSE(3 3.1 50u 100n 100n 50u 100u)
*.tran 50u 100u
*.end
" }
C {devices/code.sym} -1010 -1190 0 0 {name=TT_MODELS
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
C {devices/lab_pin.sym} -1350 -1130 0 1 {name=l3 sig_type=std_logic lab=vout}
C {devices/capa.sym} -1390 -1030 0 0 {name=C3
m=1
value=20u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -1390 -940 0 0 {name=R4
value=30m
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -2230 -850 0 0 {name=l6 sig_type=std_logic lab=0}
C {sky130_fd_pr/res_xhigh_po.sym} -1490 -1070 0 0 {name=R5
W=1
L=35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -1490 -910 0 0 {name=R6
W=1
L=55
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} -1640 -1080 0 0 {name=C4 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -1510 -1190 0 0 {name=M2
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
C {/home/eslam/Analog_Design/LDO/Schematic/Miller_OTA_NMOS_1.8v.sym} -1720 -1190 0 0 {name=x3}
C {/home/eslam/Analog_Design/Bandgap/Schematics/BGR1.8v/Bandgap1.8v.sym} -2170 -1230 0 0 {name=x4}
C {devices/lab_pin.sym} -1350 -1690 0 1 {name=l4 sig_type=std_logic lab=vout1}

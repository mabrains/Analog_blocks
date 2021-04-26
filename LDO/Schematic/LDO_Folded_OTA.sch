v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1410 -1470 1410 -1410 { lab=vout}
N 1410 -1350 1410 -1290 { lab=#net1}
N 1410 -1440 1550 -1440 { lab=vout}
N 1410 -1290 1410 -1250 { lab=#net1}
N 1410 -1190 1410 -1160 { lab=0}
N 1410 -1500 1470 -1500 { lab=Vin}
N 1410 -1680 1410 -1530 { lab=Vin}
N 1470 -1680 1470 -1500 { lab=Vin}
N 1410 -1680 1470 -1680 { lab=Vin}
N 1510 -1440 1510 -1370 { lab=vout}
N 1510 -1310 1510 -1280 { lab=#net2}
N 1510 -1220 1510 -1160 { lab=0}
N 1410 -1160 1510 -1160 { lab=0}
N 1160 -1680 1410 -1680 { lab=Vin}
N 860 -1160 1410 -1160 { lab=0}
N 660 -1680 1160 -1680 { lab=Vin}
N 670 -1160 860 -1160 { lab=0}
N 1380 -1220 1390 -1220 { lab=0}
N 1380 -1380 1380 -1220 { lab=0}
N 1380 -1380 1390 -1380 { lab=0}
N 1260 -1440 1260 -1420 { lab=vout}
N 1260 -1440 1410 -1440 { lab=vout}
N 1380 -1220 1380 -1160 { lab=0}
N 860 -1580 860 -1500 { lab=#net3}
N 860 -1680 860 -1640 { lab=Vin}
N 940 -1300 1410 -1300 { lab=#net1}
N 860 -1500 990 -1500 { lab=#net3}
N 1260 -1360 1260 -1300 { lab=#net1}
N 940 -1440 940 -1300 { lab=#net1}
N 940 -1440 990 -1440 { lab=#net1}
N 900 -1560 990 -1560 { lab=Vref}
N 900 -1560 900 -1440 { lab=Vref}
N 850 -1440 900 -1440 { lab=Vref}
N 1150 -1680 1150 -1580 { lab=Vin}
N 1150 -1420 1150 -1160 { lab=0}
N 1310 -1500 1370 -1500 { lab=#net4}
C {devices/lab_pin.sym} 1550 -1440 0 1 {name=l4 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 1635 -1590 0 0 {name=NGSPICE
only_toplevel=true
value="
*DC op
*Vinput Vin 0 5
*.op
*DC input sweep
*Vinput Vin 0 1.8
*VVref Vref 0 1.1 
*.DC vinput 0 2.2 0.1
*PSRR analysis
Vinput Vin 0 DC 1.8 AC 1
VVref Vref 0 1.1 
.AC dec 10 1 100MEG
*Transient analysis
*VVin Vin 0 PULSE(0 5 50u 100n 100n 50u 100u)
*.tran 50u 200u
*.end
" }
C {devices/capa.sym} 1510 -1340 0 0 {name=C2
m=1
value=20u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1510 -1250 0 0 {name=R3
value=30m
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 660 -1680 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 670 -1160 0 0 {name=l2 sig_type=std_logic lab=0}
C {sky130_fd_pr/res_xhigh_po.sym} 1410 -1380 0 0 {name=R1
W=1
L=35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1410 -1220 0 0 {name=R2
W=1
L=55
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1260 -1390 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {devices/code.sym} 1800 -1270 0 0 {name=TT_MODELS
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
C {devices/isource.sym} 860 -1610 0 0 {name=I0 value=25u}
C {/home/eslam/Analog_Design/LDO/Schematic/Folded_Cascode_OTA.sym} 1150 -1500 0 0 {name=x1}
C {devices/lab_pin.sym} 850 -1440 0 0 {name=l3 sig_type=std_logic lab=Vref}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1390 -1500 0 0 {name=M1
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
model=pfet_g5v0d10v5
spiceprefix=X
}

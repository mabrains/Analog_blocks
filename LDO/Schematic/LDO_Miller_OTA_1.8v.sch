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
N -1690 -990 -1690 -920 { lab=vout}
N -1690 -860 -1690 -830 { lab=#net2}
N -1690 -770 -1690 -710 { lab=0}
N -1790 -710 -1690 -710 { lab=0}
N -2040 -1230 -1790 -1230 { lab=Vin}
N -2340 -710 -1790 -710 { lab=0}
N -2540 -1230 -2040 -1230 { lab=Vin}
N -2530 -710 -2340 -710 { lab=0}
N -1820 -770 -1810 -770 { lab=0}
N -1820 -930 -1820 -770 { lab=0}
N -1820 -930 -1810 -930 { lab=0}
N -1940 -990 -1940 -970 { lab=vout}
N -1940 -990 -1790 -990 { lab=vout}
N -1820 -770 -1820 -710 { lab=0}
N -1940 -910 -1940 -880 { lab=#net1}
N -2240 -880 -1790 -880 { lab=#net1}
N -1850 -1050 -1830 -1050 { lab=#net3}
N -2240 -1010 -2240 -880 { lab=#net1}
N -2240 -1010 -2190 -1010 { lab=#net1}
N -2320 -1090 -2190 -1090 { lab=#net4}
N -2240 -1050 -2190 -1050 { lab=#net5}
N -2020 -960 -2020 -710 { lab=0}
N -2020 -1230 -2020 -1140 { lab=Vin}
N -2240 -1230 -2240 -1180 { lab=Vin}
N -2240 -1120 -2240 -1050 { lab=#net5}
C {devices/lab_pin.sym} -1650 -990 0 1 {name=l4 sig_type=std_logic lab=vout}
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
C {devices/lab_pin.sym} -2540 -1230 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2530 -710 0 0 {name=l2 sig_type=std_logic lab=0}
C {sky130_fd_pr/res_xhigh_po.sym} -1790 -930 0 0 {name=R1
W=1
L=35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -1790 -770 0 0 {name=R2
W=1
L=55
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} -1940 -940 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {devices/code.sym} -1530 -830 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} -1585 -1150 0 0 {name=NGSPICE
only_toplevel=true
value="
*DC input sweep
VVin Vin 0 1.8
*VVref Vref 0 1.1 
.dc VVin 0 2.2 0.5
*PSRR analysis
*VVin Vin 0 DC 2.2 AC 1
*VVref Vref 0 1.1
*.ac dec 10 1 150MEG
*Transient analysis
*VVin Vin 0 PULSE(2 2.1 50u 100n 100n 50u 100u)
*.tran 50u 100u
*.end
" }
C {/home/eslam/Analog_Design/LDO/Schematic/Error_Amplifier.sym} -2030 -1050 0 0 {name=x1}
C {devices/isource.sym} -2240 -1150 0 0 {name=I0 value=20u}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1810 -1050 0 0 {name=M1
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

v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1710 -1080 1710 -1020 { lab=#net1}
N 1710 -960 1710 -900 { lab=Vout}
N 1710 -1050 1850 -1050 { lab=#net1}
N 1710 -900 1710 -860 { lab=Vout}
N 1710 -800 1710 -770 { lab=0}
N 1710 -1110 1770 -1110 { lab=Vin}
N 1710 -1290 1710 -1140 { lab=Vin}
N 1770 -1290 1770 -1110 { lab=Vin}
N 1710 -1290 1770 -1290 { lab=Vin}
N 1460 -1290 1710 -1290 { lab=Vin}
N 1160 -770 1710 -770 { lab=0}
N 960 -1290 1460 -1290 { lab=Vin}
N 970 -770 1160 -770 { lab=0}
N 1680 -830 1690 -830 { lab=0}
N 1680 -990 1680 -830 { lab=0}
N 1680 -990 1690 -990 { lab=0}
N 1560 -1050 1560 -1030 { lab=#net1}
N 1560 -1050 1710 -1050 { lab=#net1}
N 1680 -830 1680 -770 { lab=0}
N 1560 -970 1560 -940 { lab=Vout}
N 1650 -1110 1670 -1110 { lab=#net2}
N 1260 -1070 1260 -940 { lab=#net3}
N 1260 -1070 1310 -1070 { lab=#net3}
N 1180 -1150 1310 -1150 { lab=Vref}
N 1260 -1110 1310 -1110 { lab=Vref}
N 1480 -1020 1480 -770 { lab=0}
N 1480 -1290 1480 -1200 { lab=Vin}
N 1260 -1150 1260 -1110 { lab=Vref}
N 1850 -1050 1850 -980 { lab=#net1}
N 1850 -920 1850 -890 { lab=#net4}
N 1850 -830 1850 -770 { lab=0}
N 1710 -770 1850 -770 { lab=0}
N 1260 -940 1390 -940 { lab=#net3}
N 1450 -940 1560 -940 { lab=Vout}
N 1560 -940 1710 -940 { lab=Vout}
N 1260 -940 1260 -900 { lab=#net3}
N 1260 -840 1260 -820 { lab=Vtest}
N 1710 -940 1760 -940 { lab=Vout}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1560 -1000 0 0 {name=C1 model=cap_mim_m3_2 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1690 -1110 0 0 {name=M1
L=0.5
W=12.5
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
C {/home/eslam/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Miller_1.8v/Error_Amplifier.sym} 1470 -1110 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 1710 -990 0 0 {name=R1
W=1.41
L=6.9
model=res_xhigh_po_1p41
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 1710 -830 0 0 {name=R2
W=1.41
L=9.3
model=res_xhigh_po_1p41
spiceprefix=X
mult=8}
C {devices/capa.sym} 1850 -950 0 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1850 -860 0 0 {name=R3
value=100m
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1760 -940 0 1 {name=l3 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 1180 -1150 0 0 {name=l1 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 960 -1290 0 0 {name=l2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 970 -770 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/ind.sym} 1420 -940 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 1260 -870 0 0 {name=C3
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1260 -820 0 0 {name=l5 sig_type=std_logic lab=Vtest}
C {devices/code_shown.sym} 2045 -1165 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup Vin 0 DC 2.2 AC 0 
VVref Vref 0 DC 0 AC 0
VVin vtest 0 DC 0 AC 0
****************************************************
*Stability analysis 
****************************************************
.control
alter VVref DC = 1.02  
alter VVin AC = 1
set units = degrees
ac dec 10 1 200MEG
show
plot db(Vout)
plot phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=10
meas ac GBW WHEN vdb(Vout)= 0
meas ac PM FIND vp(Vout) WHEN vdb(Vout)=0
.endc
.end
" }
C {devices/code.sym} 1330 -1440 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/tt/nonfet.spice
* Mismatch parameters
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/r+c/res_typical__cap_typical.spice
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/tt/specialized_cells.spice
* All models
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice
* Corner
.include ~/Analog_blocks/models/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/tt/rf.spice
"}

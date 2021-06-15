v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1360 -1440 1360 -1340 { lab=#net1}
N 1360 -1560 1360 -1500 { lab=Vdd}
N 1320 -1560 1360 -1560 { lab=Vdd}
N 1360 -1340 1430 -1340 { lab=#net1}
N 1320 -1380 1430 -1380 { lab=Vp}
N 1580 -1560 1580 -1420 { lab=Vdd}
N 1360 -1560 1580 -1560 { lab=Vdd}
N 1400 -1300 1430 -1300 { lab=#net2}
N 1400 -1300 1400 -1200 { lab=#net2}
N 1400 -1200 1740 -1200 { lab=#net2}
N 1730 -1340 1840 -1340 { lab=Vout}
N 1580 -1260 1580 -1120 { lab=0}
N 1740 -1240 1740 -1200 { lab=#net2}
N 1740 -1340 1740 -1300 { lab=Vout}
N 1740 -1200 1850 -1200 { lab=#net2}
N 1910 -1200 1960 -1200 { lab=Vtest}
N 1320 -1120 1580 -1120 { lab=0}
N 1810 -1340 1810 -1290 { lab=Vout}
N 1810 -1230 1810 -1120 { lab=0}
N 1580 -1120 1810 -1120 { lab=0}
C {devices/lab_pin.sym} 1320 -1560 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1360 -1470 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1320 -1380 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1320 -1120 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1840 -1340 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {/home/eslam/Analog_blocks/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor5v/Miller_OTA_NMOS.sym} 1590 -1340 0 0 {name=x1}
C {devices/code.sym} 1430 -1720 0 0 {name=TT_MODELS1
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
C {devices/code_shown.sym} 2045 -1605 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vin vtest 0 DC 0 AC 0
****************************************************
*Stability analysis 
****************************************************
.control
alter Vpos DC = 0.9 
alter Vin AC = 1
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
C {devices/ind.sym} 1740 -1270 0 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 1880 -1200 3 0 {name=C2
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1960 -1200 0 1 {name=l3 sig_type=std_logic lab=Vtest}
C {devices/capa.sym} 1810 -1260 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}

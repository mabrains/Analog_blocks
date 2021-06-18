v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1440 -1660 1440 -1570 { lab=Vdd}
N 1260 -1660 1440 -1660 { lab=Vdd}
N 1440 -1370 1440 -1280 { lab=0}
N 1260 -1280 1440 -1280 { lab=0}
N 1540 -1450 1580 -1450 { lab=Vref}
C {devices/code.sym} 1480 -1150 0 0 {name=TT_MODELS1
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
C {devices/code_shown.sym} 1665 -1855 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
************************************************
*Source initialization
************************************************
Vsup Vdd 0 DC 0 AC 0
************************************************
*Temp variation
************************************************
.control
alter Vsup DC = 1.8
dc temp -40 120 1
show
plot vref
meas DC Vref_27 FIND Vref AT=27
meas DC Vref_neg40 FIND Vref AT=-40
meas DC Vref_120 FIND Vref AT=120 
.endc
************************************************
*Supply variation
************************************************
.control
dc Vsup 0 3 0.5
plot vdd vref
meas DC Vref_nom FIND Vref AT=1.8
meas DC Vref_Sup_pos10per FIND Vref AT=1.62
meas DC Vref_Sup_neg10per FIND Vref AT=1.98
.endc
************************************************
*PSRR analysis
************************************************
.control
alter Vsup DC = 1.8
alter Vsup AC = 1  
ac dec 10 1 100MEG
plot db(vref)
meas ac PSR_1k FIND vdb(Vref) AT=1k
meas ac PSR_1M FIND vdb(vref) AT=1Meg 
.endc
************************************************
*Transient analysis
************************************************
.control
alter @Vsup[pwl] = [ 0 0 100u 0 200u 3 500u 3 ]
tran 100u 500u
plot vdd vref
.endc
************************************************
.end
" }
C {/home/eslam/Analog_blocks/Analog_Blocks/Bandgap/Schematics/BGR1.8v_2/Bandgap_2.sym} 1440 -1470 0 0 {name=x1}
C {devices/lab_pin.sym} 1260 -1660 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 1260 -1280 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1580 -1450 0 1 {name=l3 sig_type=std_logic lab=Vref}

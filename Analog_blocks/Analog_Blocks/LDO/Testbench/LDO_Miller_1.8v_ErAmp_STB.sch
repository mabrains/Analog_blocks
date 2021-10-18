v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -4840 -3910 -4840 -3810 { lab=#net1}
N -4840 -4030 -4840 -3970 { lab=Vdd}
N -4880 -4030 -4840 -4030 { lab=Vdd}
N -4840 -3810 -4770 -3810 { lab=#net1}
N -4840 -4030 -4620 -4030 { lab=Vdd}
N -4430 -3710 -4430 -3670 { lab=#net2}
N -4430 -3810 -4430 -3770 { lab=Vout}
N -4290 -3670 -4240 -3670 { lab=Vtest}
N -4880 -3590 -4620 -3590 { lab=0}
N -4620 -3590 -4390 -3590 { lab=0}
N -4620 -4030 -4620 -3900 { lab=Vdd}
N -4870 -3770 -4790 -3770 { lab=Vp}
N -4450 -3810 -4320 -3810 { lab=Vout}
N -4380 -3810 -4380 -3770 {}
N -4380 -3710 -4380 -3590 {}
N -4390 -3590 -4380 -3590 {}
N -4620 -3720 -4620 -3590 {}
N -4820 -3670 -4350 -3670 {}
N -4820 -3850 -4820 -3670 {}
N -4820 -3850 -4790 -3850 {}
C {devices/lab_pin.sym} -4880 -4030 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} -4840 -3940 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} -4870 -3770 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -4880 -3590 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -4320 -3810 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/code.sym} -4770 -4190 0 0 {name=TT_MODELS1
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
C {devices/code_shown.sym} -4155 -4075 0 0 {name=NGSPICE
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
alter Vpos AC = 0
alter Vin DC = 0 
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
C {devices/ind.sym} -4430 -3740 0 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} -4320 -3670 3 0 {name=C2
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -4240 -3670 0 1 {name=l3 sig_type=std_logic lab=Vtest}
C {devices/capa.sym} -4380 -3740 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Miller_1.8v/Error_Amplifier.sym} -4630 -3810 0 0 {name=x2}

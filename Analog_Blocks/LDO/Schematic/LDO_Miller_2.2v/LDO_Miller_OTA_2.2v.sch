v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1790 -1020 -1790 -960 { lab=Vout}
N -1790 -900 -1790 -840 { lab=#net1}
N -1790 -990 -1650 -990 { lab=Vout}
N -1790 -840 -1790 -800 { lab=#net1}
N -1790 -740 -1790 -710 { lab=GND}
N -1790 -1050 -1730 -1050 { lab=Vin}
N -1790 -1230 -1790 -1080 { lab=Vin}
N -1730 -1230 -1730 -1050 { lab=Vin}
N -1790 -1230 -1730 -1230 { lab=Vin}
N -2040 -1230 -1790 -1230 { lab=Vin}
N -2340 -710 -1790 -710 { lab=GND}
N -2540 -1230 -2040 -1230 { lab=Vin}
N -2530 -710 -2340 -710 { lab=GND}
N -1820 -770 -1810 -770 { lab=GND}
N -1820 -930 -1820 -770 { lab=GND}
N -1820 -930 -1810 -930 { lab=GND}
N -1940 -990 -1940 -970 { lab=Vout}
N -1940 -990 -1790 -990 { lab=Vout}
N -1820 -770 -1820 -710 { lab=GND}
N -1940 -910 -1940 -880 { lab=#net1}
N -2240 -880 -1790 -880 { lab=#net1}
N -1850 -1050 -1830 -1050 { lab=#net2}
N -2020 -1230 -2020 -1140 { lab=Vin}
N -2020 -960 -2020 -710 { lab=GND}
N -2240 -1010 -2240 -880 { lab=#net1}
N -2240 -1010 -2190 -1010 { lab=#net1}
N -2340 -1090 -2190 -1090 { lab=#net3}
N -2240 -1050 -2190 -1050 { lab=#net3}
N -2240 -1090 -2240 -1050 { lab=#net3}
N -2490 -1230 -2490 -1170 { lab=Vin}
N -2490 -1010 -2490 -710 { lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} -1790 -930 0 0 {name=R1
W=1
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -1790 -770 0 0 {name=R2
W=1
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} -1940 -940 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
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
C {/home/eslam/Analog_Design/Analog_Blocks/LDO/Schematic/LDO_Miller_2.2v/BGR.sym} -2490 -1090 0 0 {name=x1}
C {/home/eslam/Analog_Design/Analog_Blocks/LDO/Schematic/LDO_Miller_2.2v/Error_Amplifier.sym} -2030 -1050 0 0 {name=x2}
C {devices/ipin.sym} -2540 -1230 0 0 {name=p1 lab=Vin}
C {devices/ipin.sym} -2530 -710 0 0 {name=p2 lab=GND}
C {devices/opin.sym} -1650 -990 0 0 {name=p3 lab=Vout}

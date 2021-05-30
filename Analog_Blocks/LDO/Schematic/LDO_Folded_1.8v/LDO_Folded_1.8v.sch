v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1410 -1470 1410 -1410 { lab=Vout}
N 1410 -1350 1410 -1290 { lab=#net1}
N 1410 -1440 1550 -1440 { lab=Vout}
N 1410 -1290 1410 -1250 { lab=#net1}
N 1410 -1190 1410 -1160 { lab=GND}
N 1410 -1500 1470 -1500 { lab=Vin}
N 1410 -1680 1410 -1530 { lab=Vin}
N 1470 -1680 1470 -1500 { lab=Vin}
N 1410 -1680 1470 -1680 { lab=Vin}
N 1160 -1680 1410 -1680 { lab=Vin}
N 860 -1160 1410 -1160 { lab=GND}
N 660 -1680 1160 -1680 { lab=Vin}
N 670 -1160 860 -1160 { lab=GND}
N 1380 -1220 1390 -1220 { lab=GND}
N 1380 -1380 1380 -1220 { lab=GND}
N 1380 -1380 1390 -1380 { lab=GND}
N 1260 -1440 1260 -1420 { lab=Vout}
N 1260 -1440 1410 -1440 { lab=Vout}
N 1380 -1220 1380 -1160 { lab=GND}
N 940 -1300 1410 -1300 { lab=#net1}
N 1260 -1360 1260 -1300 { lab=#net1}
N 940 -1440 940 -1300 { lab=#net1}
N 940 -1440 990 -1440 { lab=#net1}
N 900 -1560 990 -1560 { lab=#net2}
N 1150 -1680 1150 -1580 { lab=Vin}
N 1150 -1420 1150 -1160 { lab=GND}
N 1310 -1500 1370 -1500 { lab=#net3}
N 800 -1680 800 -1640 { lab=Vin}
N 940 -1500 990 -1500 { lab=#net2}
N 940 -1560 940 -1500 { lab=#net2}
N 800 -1480 800 -1160 { lab=GND}
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
C {devices/ipin.sym} 660 -1680 0 0 {name=p1 lab=Vin}
C {devices/ipin.sym} 670 -1160 0 0 {name=p2 lab=GND}
C {devices/opin.sym} 1550 -1440 0 0 {name=p3 lab=Vout}
C {/home/eslam/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Folded_Cascode_OTA.sym} 1150 -1500 0 0 {name=x1}
C {/home/eslam/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Bandgap1.8v.sym} 800 -1560 0 0 {name=x2}

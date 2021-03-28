v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1490 -1830 1490 -1800 { lab=vdd}
N 1360 -1830 1490 -1830 { lab=vdd}
N 1360 -1830 1360 -1800 { lab=vdd}
N 1340 -1770 1360 -1770 { lab=vdd}
N 1340 -1810 1340 -1770 { lab=vdd}
N 1340 -1810 1360 -1810 { lab=vdd}
N 1490 -1770 1510 -1770 { lab=vdd}
N 1510 -1810 1510 -1770 { lab=vdd}
N 1490 -1810 1510 -1810 { lab=vdd}
N 1400 -1770 1450 -1770 { lab=#net9}
N 1360 -1740 1360 -1620 { lab=#net9}
N 1410 -1770 1410 -1720 { lab=#net9}
N 1360 -1720 1410 -1720 { lab=#net9}
N 1360 -1560 1360 -1460 { lab=0}
N 1340 -1590 1360 -1590 { lab=0}
N 1340 -1590 1340 -1540 { lab=0}
N 1340 -1540 1360 -1540 { lab=0}
N 1360 -1460 1360 -1430 { lab=0}
N 1490 -1740 1490 -1670 { lab=start}
N 1490 -1610 1490 -1430 { lab=0}
N 1490 -1700 1620 -1700 { lab=start}
N 1660 -1700 1680 -1700 { lab=vdd}
N 1680 -1760 1680 -1700 { lab=vdd}
N 1660 -1760 1680 -1760 { lab=vdd}
N 1660 -1760 1660 -1730 { lab=vdd}
N 1660 -1830 1660 -1760 { lab=vdd}
N 1490 -1830 1660 -1830 { lab=vdd}
N 1400 -1590 1660 -1590 { lab=out}
N 1660 -1670 1660 -1590 { lab=out}
N 1660 -1590 1740 -1590 { lab=out}
N 1360 -1430 1490 -1430 { lab=0}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1380 -1770 0 1 {name=M9
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1470 -1770 0 0 {name=M10
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1380 -1590 0 1 {name=M11
L=0.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 1490 -1640 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1640 -1700 0 0 {name=M12
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1590 -1700 0 0 {name=l3 sig_type=std_logic lab=start}
C {/home/eslam/xschem_git/xschem_library/devices/lab_pin.sym} 1450 -1430 0 0 {name=l5 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1550 -1830 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1740 -1590 0 1 {name=l7 sig_type=std_logic lab=out}

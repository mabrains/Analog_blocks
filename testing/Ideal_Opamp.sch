v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1440 -820 1500 -820 { lab=Vp}
N 1440 -780 1500 -780 { lab=Vn}
N 1540 -770 1540 -740 { lab=0}
N 1540 -860 1540 -830 { lab=#net1}
N 1540 -860 1640 -860 { lab=#net1}
N 1700 -860 1860 -860 { lab=Vout}
N 1750 -860 1750 -840 { lab=Vout}
N 1830 -860 1830 -840 { lab=Vout}
N 1740 -740 1750 -740 { lab=VDD}
N 1750 -780 1750 -740 { lab=VDD}
N 1820 -740 1830 -740 { lab=VSS}
N 1830 -780 1830 -740 { lab=VSS}
C {devices/vcvs.sym} 1540 -800 0 0 {name=E1 value=100000}
C {devices/ipin.sym} 1440 -820 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 1440 -780 0 0 {name=p2 lab=Vn}
C {devices/lab_pin.sym} 1540 -740 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/opin.sym} 1860 -860 0 0 {name=p3 lab=Vout}
C {devices/res.sym} 1670 -860 3 0 {name=R1
value=100G
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 1740 -740 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 1820 -740 0 0 {name=p5 lab=VSS}
C {sky130_fd_pr/diode.sym} 1750 -810 2 0 {name=D1
model=diode_pw2nd_05v5
area=1

}
C {sky130_fd_pr/diode.sym} 1830 -810 0 0 {name=D2
model=diode_pw2nd_05v5
area=1

}

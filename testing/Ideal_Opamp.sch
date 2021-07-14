v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1440 -820 1500 -820 { lab=Vp}
N 1440 -780 1500 -780 { lab=Vn}
N 1540 -770 1540 -740 { lab=0}
N 1540 -860 1540 -830 { lab=Vout}
N 1540 -860 1700 -860 { lab=Vout}
C {devices/vcvs.sym} 1540 -800 0 0 {name=E1 value=1e6 max=3.6 min=0}
C {devices/ipin.sym} 1440 -820 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 1440 -780 0 0 {name=p2 lab=Vn}
C {devices/lab_pin.sym} 1540 -740 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/opin.sym} 1700 -860 0 0 {name=p3 lab=Vout}

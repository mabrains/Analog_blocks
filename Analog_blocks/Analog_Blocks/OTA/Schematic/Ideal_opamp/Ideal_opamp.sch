v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1040 -680 1140 -680 { lab=Vp}
N 1040 -580 1140 -580 { lab=Vn}
N 1370 -680 1370 -660 { lab=Out}
N 1370 -680 1630 -680 { lab=Out}
N 1370 -600 1370 -520 { lab=0}
C {devices/ammeter.sym} 1170 -680 3 0 {name=V1}
C {devices/ammeter.sym} 1170 -580 3 0 {name=V2}
C {devices/lab_pin.sym} 1200 -680 0 1 {name=l1 sig_type=std_logic lab=PLUS_I}
C {devices/lab_pin.sym} 1200 -580 0 1 {name=l2 sig_type=std_logic lab=MINUS_I}
C {devices/bsource.sym} 1370 -630 0 0 {name=B1 VAR=V FUNC="'VDD/2*(1+tanh(GAIN*(V(PLUS_I)-V(MINUS_I))))'"}
C {devices/lab_pin.sym} 1370 -520 0 0 {name=l3 sig_type=std_logic lab=0}
C {devices/ipin.sym} 1040 -680 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 1040 -580 0 0 {name=p2 lab=Vn}
C {devices/opin.sym} 1630 -680 0 0 {name=p3 lab=Out}

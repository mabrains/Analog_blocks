# run_magic_drc.tcl ---
#    batch script for running DRC

crashbackups stop
drc euclidean on
drc style drc(full)
drc on
snap internal
gds flatglob *__example_*
gds flatten true
gds read /home/eslam/Analog_blocks/layout/LDO/Feedback_resistors_cap
load Feedback_resistors_cap
select top cell
expand
drc catchup
set allerrors [drc listall why]
set oscale [cif scale out]
set ofile [open Feedback_resistors_cap_drc.txt w]
puts $ofile "DRC errors for cell Feedback_resistors_cap"
puts $ofile "--------------------------------------------"
foreach {whytext rectlist} $allerrors {
   puts $ofile ""
   puts $ofile $whytext
   foreach rect $rectlist {
       set llx [format "%.3f" [expr $oscale * [lindex $rect 0]]]
       set lly [format "%.3f" [expr $oscale * [lindex $rect 1]]]
       set urx [format "%.3f" [expr $oscale * [lindex $rect 2]]]
       set ury [format "%.3f" [expr $oscale * [lindex $rect 3]]]
       puts $ofile "$llx $lly $urx $ury"
   }
}
close $ofile

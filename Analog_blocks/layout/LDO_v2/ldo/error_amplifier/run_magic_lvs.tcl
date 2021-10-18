# run_magic_drc.tcl ---
#    batch script for running DRC

crashbackups stop
drc euclidean on
drc style drc(full)
drc on
snap internal
gds flatglob *__example_*
gds flatten true
gds read /home/mina/mabrains/layouts/error_amplifier/error_amplifier_flattened
load error_amplifier_flattened
select top cell
expand
extract all
ext2spice lvs
ext2spice -M -o extr_net.spice

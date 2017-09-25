# When a DCD file was written without PBC information, VMD usually adds a PBC
# cubic unit cell with 1 Angstrom edge.
#
# Run this script from inside VMD to set the PBC vectors to zero (as they should) with:
# source clear_pbc.tcl

for { set frame 0 } { ${frame} < [molinfo top get numframes] } { incr frame } {
    animate goto ${frame}
    molinfo top set { "a" "b" "c" } { 0.0 0.0 0.0 }
}

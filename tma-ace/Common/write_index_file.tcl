if { [string length [info procs write_index_group]] == 0 } {
    # Write a GROMACS-style .ndx file containing groups corresponding to atom
    # selections. Parameters: output (open file), sel (atomselect procedure),
    # label (name of the group)
    proc write_index_group { output sel label } {
        if { [${sel} num] == 0 } return
        puts "Writing index group \"${label}\": [${sel} num] atoms"
        puts ${output} [format "\[ %s \]" ${label}]
        set line_buf 0
        foreach num [${sel} get serial] {
            puts -nonewline ${output} [format " %9d" ${num}]
            set line_buf [expr ${line_buf} + 10]
            if { ${line_buf} > 70 } {
                set line_buf 0
                puts ${output} ""
            }
        }
        if { ${line_buf} > 0 } {
            puts ${output} ""
        }
        puts ${output} ""
    }
}


mol new tma-aco.psf type psf
mol addfile tma-aco.pdb type pdb waitfor all

if { [molinfo num] > 0 } {

    set ndx_file [open tma-aco.ndx "w"]

    write_index_group ${ndx_file} \
        [atomselect top "segid NC4"] "Tetramethylammonium"
    write_index_group ${ndx_file} \
        [atomselect top "segid ACO"] "Acetone"

    close ${ndx_file}
}

quit

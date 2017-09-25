
puts -nonewline [cv printframelabels]
for { set frame 0 } { ${frame} < [molinfo top get numframes] } { incr frame } {
    cv frame ${frame}
    cv update
    puts -nonewline [cv printframe]
}

proc output { s } { puts $s }

proc input {} {
    gets stdin line
    if { $line == "quit" } exit
    return $line
}

proc oi { s } {
    output $s
    input
}

proc laby_name_left {} { oi left }

proc laby_name_right {} { oi right }

proc laby_name_forward {} { oi forward }

proc laby_name_take {} { oi take }

proc laby_name_drop {} { oi drop }

proc laby_name_escape {} { oi escape }

proc laby_name_say { s } { oi {say $s} }

set laby_name_Void void
set laby_name_Wall wall
set laby_name_Rock rock
set laby_name_Web web
set laby_name_Exit exit
set laby_name_Unknown unknown

proc laby_name_look { what } {
    output look
    set ans [input]
    return "$$what == \"$ans\""
}

oi start

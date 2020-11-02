puts [pid]
for {set i 0} {$i < 1000} {incr i} {
	after 10
}
puts $::env(PATH)

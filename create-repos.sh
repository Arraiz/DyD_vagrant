#!/usr/bin/expect -f
set user [lindex $argv 0]
set password [lindex $argv 1]

spawn /bin/su dev

expect "Password:"
send "dev\r";

interact




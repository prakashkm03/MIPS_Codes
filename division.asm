main:

la $a0 name_mssg
li $v0 4
syscall

li $v0 5
syscall
move $t0,$v0

li $v0,5
syscall
move $t1,$v0

la $a0 remainder
li $v0 4
syscall

div $t0,$t1
mfhi $a0 #remainder
li $v0,1
syscall


la $a0 quotient
li $v0 4
syscall

mflo $a0 #quotient
li $v0,1
syscall

li $v0, 10 # syscall code 10 is for exit.
syscall # make the syscall.

.data
name_mssg: .asciiz "Prakash 161210033\n"
remainder: .asciiz "Remainder:"
quotient: .asciiz "Quotient:"



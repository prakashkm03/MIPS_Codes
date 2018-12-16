main:
la $a0 msg
li $v0,4
syscall

la $a0 h1
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0
li $t1 1

bltz $t0,err_msg

loop:
beqz $t0,print
mul $t1,$t1,$t0
sub $t0,$t0,1
b loop

err_msg:
la $a0,error_msg
li $v0,4
syscall
b exit

print:
la $a0 h2
li $v0,4
syscall
move $a0,$t1
li $v0,1
syscall

exit:
li $v0,10
syscall

.data
msg: .asciiz "Prakash 161210033\n"
h1: .asciiz "enter no to find factorial\n"
h2: .asciiz "Factorial is: "
error_msg: .asciiz "Error Message!!! number is negative\n"

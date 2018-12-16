.text
main:

la $a0, output_msg 
li $v0, 4 
syscall 

li $v0, 5 
syscall
move $t0, $v0 

li $v0, 5 
syscall
move $t1, $v0 
blez $t1, exit # if B <= 0, exit.

mul $t2, $t0, $t1 
move $t3, $t0 

loop:
move $a0, $t3 
li $v0, 1 
syscall 
beq $t2, $t3, endloop # if m == S, we’re done.
add $t3, $t3, $t0 # otherwise, m = m + A.

la $a0, space # print a space.
li $v0, 4 # syscall 4 = print_string
syscall

b loop # iterate.

endloop:
la $a0, newline # print a newline:
li $v0, 4 # syscall 4 = print_string
syscall

exit: # exit the program:
li $v0, 10 # syscall 10 = exit
syscall # we’re outta here.
## Here’s where the data for this program is stored:

.data
output_msg: .asciiz "Prakash 161210033\n"
space: .asciiz " "
newline: .asciiz "\n"




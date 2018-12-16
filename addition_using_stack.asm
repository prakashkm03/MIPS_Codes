.data
output_msg: .asciiz "Prakash 161210033\n"
aprompt:.asciiz"a="
bprompt:.asciiz"b="
msg:.asciiz"ans="
.text
main:
la $a0, output_msg 
li $v0, 4
syscall

la $a0,aprompt
li $v0,4
syscall
li $v0,5
syscall
move $t0,$v0


la $a0,bprompt
li $v0,4
syscall
li $v0,5
syscall
move $t1,$v0


addi $sp,$sp,-4
sw $t1,($sp)
add $t1,$t1,$t0
sw $t1,($sp)
lw $t1,($sp)
addi $sp,$sp,4


la $a0,msg
li $v0,4
syscall
li $v0,1
la $a0,($t1)
syscall




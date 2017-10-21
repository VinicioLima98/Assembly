.data
	msg1: .asciiz"\Digite um numero inteiro"
	msg2: .asciiz"\nA raiz inteira é: "
.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	
	li $t1, 0
	
	li $t2, 1
	
	
	enquanto:
	sub $t0, $t0, $t2
	add $t2, $t2, 2
	add $t1, $t1, 1
	
	bge $t0, $t2, enquanto
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	
	
.data
	msg1: .asciiz"\nDigite o numero que deseja multiplicar: "
	msg2: .asciiz"\n"
.text
main:
		
		li $t2, 0
		
		li $v0, 4
		la $a0, msg1
		syscall
		
		li $v0, 5
		syscall
		add $t0, $v0, $zero
		
		enquanto: 
		
		mul $t1, $t0, $t2
		
		li $v0, 1
		add $a0, $t1, $zero
		syscall
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		add $t2, $t2, 1
		
		ble $t2, 10, enquanto
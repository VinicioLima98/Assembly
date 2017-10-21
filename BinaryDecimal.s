.data
	msg1:.asciiz"\nInsira o número em binário:"
	msg2:.asciiz"\nO número convertido para decimal é: "
.text
main:

	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	

while:
	ble $t0, 1000000000, dorestricao  #1<n<1000000000
	

dorestricao:
	beq $t0, 9, main 
	beq $t0, 8, main
	beq $t0, 7, main
	beq $t0, 6, main
	beq $t0, 5, main
	beq $t0, 4, main
	beq $t0, 3, main
	beq $t0, 2, main
	
	
do:
	rem $t1, $t0, 10		#aux <-	n%10
	add $t2, $t2, 1			#p +1
	add $t3, $zero, 1		#i<-1
	add $t4, $zero, 1		#p<-1
	
	
power :
	bge $t3, $t2, if	#i<p
	mul $t4, $t4, 2		#p<-p**8
	add $t3, $t3, 1		#i + 1
	ble $t3, $t2, power	#i <- p
	

if:
	mul $t7, $t1, $t4	#aux2<-aux**p
	add $t6, $t6, $t7	#dec<-dec+aux2
	div $t0, $t0, 10	#n<-n/10
	bgt $t0, $zero, do	#n>0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t6, $zero 
	syscall
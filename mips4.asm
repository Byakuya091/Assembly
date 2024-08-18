
.text
	#shift left usage
	#li $t1, 4
	#sll $s1, $t1, 3 #multiply by 2^3
	#li $v0, 1 #print 4x2^3 = 32
	#move $a0, $s1 
	#syscall
	
	#division
	
	li $t0, 32
	li $t1, 5
	div $t0,$t1 #t0/t1
	
	#integer part to $s0
	mflo $s0
	
	#remainder to #$s1
	mfhi $s1
	
	#print integer part
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	#shift right usage
	srl $s2, $t0, 2 # t0/2^2
	li $v0, 1
	move $a0, $s2
	syscall
	
	
	
	
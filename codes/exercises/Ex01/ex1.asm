			.data # Daqui pra frente cadastra variaveis

mensagem1:	.asciiz "Digite o valor de A: " # .asciiz é tipo de variavel string
mensagem2:	.asciiz "Digite o valor de B: "
mensagem3:	.asciiz "Digite o valor de D: "
mensagem4:	.asciiz "Digite o valor de E: "
res:	.asciiz "C = "
		
			.text # Daqui pra frente faz o codigo

			# imprime mensagem
			addi $v0, $zero, 4 # Chama o registrador v0 de valor 4, o que imprime string
			la $a0, mensagem1 # Coloca o endereco da variavel dentro do registrador
			syscall # Chama o sistema operacional para rodar
			# le inteiro
			addi $v0, $zero, 5 # Chama o registrador v0 de valor 5, o que le string
			syscall #  Chama o sistema operacional para rodar
			
			add $t0, $v0, $zero # 5
			

			addi $v0, $zero, 4
			la $a0, mensagem2
			syscall
			addi $v0, $zero, 5 
			syscall
			
			add $t1, $v0, $zero # 6
			
			# calcula
			mul $s0, $t0, $t1 # 5 * 6 = 30
			
			
			addi $v0, $zero, 4
			la $a0, mensagem3
			syscall
			addi $v0, $zero, 5 # 5
			syscall
			add $t0, $v0, $zero
			
			addi $v0, $zero, 4
			la $a0, mensagem4
			syscall
			addi $v0, $zero, 5 # 2
			syscall
			add $t1, $v0, $zero
			
			sub $v0, $t0, $t1 # 3
			add $s1, $v0, $zero # 5-2 = 3
			
			div $s0, $s0, $s1

			# imprime inteiro
			addi $v0, $zero, 4
			la $a0, res
			syscall
			add $a0, $zero, $s0 # Chama o registrador a0 com valor de s0, que sera passado para o syscall
			addi $v0, $zero, 1 # Chama o registrador v0 de valor 1, o que imprime inteiro
			syscall #  Chama o sistema operacional para rodar
                        
                        jr $ra # finaliza
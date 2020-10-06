			.data # Daqui pra frente cadastra variaveis

mensagem:	.asciiz "Digite um numero\n" # .asciiz é tipo de variavel string
		
			.text # Daqui pra frente faz o codigo

			# imprime mensagem
			addi $v0, $zero, 4 # Chama o registrador v0 de valor 4, o que imprime string
			la $a0, mensagem # Coloca o endereco da variavel dentro do registrador
			syscall # Chama o sistema operacional para rodar

			# le inteiro
			addi $v0, $zero, 5 # Chama o registrador v0 de valor 5, o que le string
			syscall #  Chama o sistema operacional para rodar
			
			# calcula sucessor
			addi $v0, $v0, 1 # incrementa 1

			# imprime inteiro
			add $a0, $zero, $v0 # Chama o registrador a0 com valor de v0, que sera passado para o syscall
			addi $v0, $zero, 1 # Chama o registrador v0 de valor 1, o que imprime inteiro
			syscall #  Chama o sistema operacional para rodar
                        
                        jr $ra # finaliza
	
#static void Main(string[] args)         
#{             
#	int numero, sucessor;

#	Console.WriteLine("Digite um numero");

#	numero = int.Parse(Console.ReadLine());

#	sucessor = num + 1;
	
#	Console.Write(sucessor);
#}

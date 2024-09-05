programa
{
	
	funcao inicio()
	{
	real saque, dep, saldo = 0
 	inteiro menu = 0
  	cadeia ext = "", controller
  	cadeia pswd, senha = "1825"
  	

        enquanto(menu != 5){
		escreva("|----------MENU----------|\n")
		escreva("| 1-SALDO = ", saldo, "\n")
		escreva("| 2-SAQUE                |\n")
		escreva("| 3-DEPÓSITO             |\n")
		escreva("| 4-EXTRATO              |\n")
	     escreva("| 5-SAIR                 |\n")
	     escreva("|------------------------|\n")
	     escreva("|ESCOLHA -->")
	    	leia(menu)
		
   	 escolha (menu){

        caso 1:
         escreva("SALDO = ", saldo, "\n")
         escreva("Aperte ENTER para continuar!")
         leia(controller)
         limpa()
           
        pare

        caso 2:
         escreva("Digite sua senha: ")
         leia(pswd)
         se(pswd == senha){
           escreva("Informe o valor desejado para sacar: ")
           leia(saque)

           enquanto(saldo < 0 ou saldo == 0){
               escreva("Saldo insuficiente. Por favor, deposite primeiro algum valor para que depois seja realizado o saque.\n\n")
               leia(saque)
           }

           se(saque > saldo){
             escreva("Saque não autorizado!\n")
             escreva("Aperte ENTER para continuar!")
             leia(controller)
             limpa()
           }

           senao{
             escreva("Saque realizado com sucesso!\n\n")
             saldo = saldo - saque 
             ext = ext + "SAQUE.........R$" + saque + "\n"
             escreva("Aperte ENTER para continuar!")
             leia(controller)
             limpa()

          }
        }
        senao{
          escreva("Senha inválida!\n")
          escreva("Aperte ENTER para continuar!")
          leia(controller)
          limpa()
        }
        
        pare

        caso 3:
        escreva("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
          escreva("Informe o valor desejado para depósito: ")
          leia(dep)

          enquanto(dep < 0 ou dep == 0){
            escreva("Valor inválido! Por favor, infome outro valor:")
            leia(dep)
          }
            escreva("Depósito realizado com sucesso!\n\n")
            saldo = saldo + dep
            ext = ext + "DEPÓSITO......R$" + dep + "\n"
            escreva("Aperte ENTER para continuar!")
            leia(controller)
            limpa()
        }

        senao{
          escreva("Senha inválida!\n")
          escreva("Aperte ENTER para continuar!")
            leia(controller)
            limpa()
        }        
          pare

          caso 4:
            escreva("Digite sua senha: ")
            leia(pswd)
              se(pswd == senha){
                escreva(ext)
                escreva("Aperte ENTER para continuar!")
                leia(controller)
                limpa()        
                  }
          senao{
            escreva("Senha inválida!\n")
            escreva("Aperte ENTER para continuar!")
            leia(controller)
            limpa()
        }        
          pare

      }
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 139; 
 * @PONTOS-DE-PARADA = 41;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
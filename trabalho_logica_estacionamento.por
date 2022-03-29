programa {
	inteiro vagas[30]
	
	funcao inicio() {
		inteiro opcao, vaga

		//Zerando o vetor
		para(inteiro i=0; i<30; i++) {
			vagas[i] = 0
		}


		faca{

			//Menu inicial
			escreva("----------------------\n")
			escreva("1 - Entrada de veículo\n")
			escreva("2 - Saída de veículo\n")
			escreva("3 - Listar vagas\n")
			escreva("4 - Sair do programa\n")
			escreva("----------------------\n")

			escreva("Ecolha uma das opções acima: ")
			leia(opcao)
			limpa()

			escolha(opcao) {
				caso 1:
					escreva("Digite o número da vaga onde o veículo deve ser adicionado: ")
					leia(vaga)
					adicionarVeiculo(vaga)
					pare
				caso 2:
					escreva("Digite o número da vaga onde o veículo a ser removido está: ")
					leia(vaga)
					removerVeiculo(vaga)
					pare
				caso 3:
					listarVagas()
					pare
				caso 4:
					escreva("Programa finalizado")
					pare
				caso contrario:
					escreva("Opção inválida!")
			}
		}enquanto(opcao != 4)
	}


	
	funcao logico vagaValida(inteiro vaga) {
	
		se(vaga >= 0 e vaga < 30){
			retorne verdadeiro
		}

		retorne falso
	}


	
	funcao adicionarVeiculo(inteiro vaga){

		se(vagaValida(vaga)){
			se(vagas[vaga] == 0) {
				vagas[vaga] = 1
				escreva("Veículo adicionado com sucesso\n")
			}senao{
				escreva("Vaga ocupada.\n")
			}
		}senao{
			escreva("Vaga inválida.\n")
		}
	}
	

	funcao removerVeiculo(inteiro vaga) {
		se(vagaValida(vaga)){
			se(vagas[vaga] == 1) {
				vagas[vaga] = 0
				escreva("Veículo removido com sucesso\n")
			}senao{
				escreva("Vaga já está livre.\n")
			}
		}senao{
			escreva("Vaga inválida.\n")
		}
	}


	funcao listarVagas() {
		escreva("===============================================================", "\n")
		escreva("                   Estacionamento TECH Vagas                   ", "\n")
		escreva("===============================================================", "\n")
		
		para(inteiro i=0; i < 30; i++){
			escreva("|", vagas[i])
		}
		escreva("|\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
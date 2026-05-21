//FELIPE WAGATSUMA DO NASCIMENTO SILVA
programa
{
	caracter tabuleiro[3][3]
	inteiro placarX = 0
	inteiro placarO = 0
	inteiro velha = 0

	funcao inicializarTabuleiro()
	{
		inteiro i
		inteiro j

		para(i = 0; i < 3; i++)
		{
			para(j = 0; j < 3; j++)
			{
				tabuleiro[i][j] = ' '
			}
		}
	}

	funcao Tabuleiro()
	{
		escreva("\n")
		escreva("   1   2   3\n")

		escreva("1 ")
		escreva(tabuleiro[0][0], " | ")
		escreva(tabuleiro[0][1], " | ")
		escreva(tabuleiro[0][2], "\n")
		escreva("  -----------\n")

		escreva("2 ")
		escreva(tabuleiro[1][0], " | ")
		escreva(tabuleiro[1][1], " | ")
		escreva(tabuleiro[1][2], "\n")
		escreva("  -----------\n")

		escreva("3 ")
		escreva(tabuleiro[2][0], " | ")
		escreva(tabuleiro[2][1], " | ")
		escreva(tabuleiro[2][2], "\n")
	}

	funcao logico posicaoLivre(inteiro linha, inteiro coluna)
	{
		se(tabuleiro[linha][coluna] == ' ')
		{
			retorne verdadeiro
		}

		retorne falso
	}

	funcao caracter verificarVencedor()
	{

		para(inteiro i = 0; i < 3; i++)
		{
			se(tabuleiro[i][0] != ' ' e tabuleiro[i][0] == tabuleiro[i][1] e tabuleiro[i][1] == tabuleiro[i][2])
			{
				retorne tabuleiro[i][0]
			}
		}

		para(inteiro i = 0; i < 3; i++)
		{
			se(tabuleiro[0][i] != ' ' e tabuleiro[0][i] == tabuleiro[1][i] e tabuleiro[1][i] == tabuleiro[2][i])
			{
				retorne tabuleiro[0][i]
			}
		}

		se(tabuleiro[0][0] != ' ' e tabuleiro[0][0] == tabuleiro[1][1] e tabuleiro[1][1] == tabuleiro[2][2])
		{
			retorne tabuleiro[0][0]
		}

		se(tabuleiro[0][2] != ' ' e tabuleiro[0][2] == tabuleiro[1][1] e tabuleiro[1][1] == tabuleiro[2][0])
		{
			retorne tabuleiro[0][2]
		}

		retorne ' '
	}
	funcao mostrarPlacar()
	{
		escreva("PLACAR:\n")
		escreva("Vitórias do xiznho (X): ", placarX, "\n")
		escreva("Vitórias do bolinha (O): ", placarO, "\n")
		escreva("Quantidade de empates (Velha): ", velha, "\n")
	}

	funcao inicio()
	{
		inteiro opcao

		faca
		{
			escreva("\nMENU:\n")
			escreva("1-Jogar\n")
			escreva("2-Ver placar\n")
			escreva("3-Sair\n")
			escreva("Digite a opção escolhida:")

			leia(opcao)
		} enquanto(opcao != 3)
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2060; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
programa
{
	inclua biblioteca Mouse --> m
	inclua biblioteca Tipos  --> tp
	inclua biblioteca Calendario --> c
	inclua biblioteca Teclado --> t
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u

	inteiro espera = 8
	inteiro tempo = 0
	inteiro bola_maldita = 0
	inteiro posicao[5] = {-30, -15, 0, 15, 30}
	inteiro voltas = 1
	inteiro inicializado = 0
	inteiro opcao = 0
	inteiro inicio_contador = 0
	inteiro fim_contador = 0
	inteiro fundo_tela = 0
	inteiro fundo_portugol = 0
	inteiro largura_fundo_portugol = 765
	inteiro altura_fundo_portugol = 500
	inteiro transparencia = 0
	logico mudar_tela = falso
	inteiro aviao_mensagem = 0
	inteiro contador_inicio = 0
	inteiro contador_final = 0
	
	funcao inicio()
	{
		
		tempo = u.tempo_decorrido()
		
		inicializar(largura_fundo_portugol, altura_fundo_portugol)
		
		carregar_imagens()

		
		faca
		{
			se(u.tempo_decorrido() > tempo + espera)
			{
				escolha(opcao)
				{
					caso 0:
					{
						primeira_parte()
						g.renderizar()
						pare
					}
					caso 1:
					{
						se(inicializado == 1)
						{
						
							inicializar(g.largura_tela(), g.altura_tela())
							inicializado++
							inicio_contador = u.tempo_decorrido()
						}
						segunda_parte()
						g.renderizar()
						pare
					}
					caso 2:
					{ 	
						se(inicializado == 2)
						{
							inicializado++
							inicio_contador = u.tempo_decorrido()
						}
						
						desenhar()
						g.renderizar()
						pare
					}
				}
	
				tempo = u.tempo_decorrido()
			}
			
		}enquanto(nao t.tecla_pressionada(t.TECLA_ESC))	
		
	}

	funcao primeira_parte()
	{
		inteiro temp_click = -1
		
		g.desenhar_imagem((g.largura_janela() / 2) - (765 / 2), (g.altura_janela() / 2) - (500 / 2), fundo_portugol)

		se(m.algum_botao_pressionado())
		{
			temp_click = m.ler_botao()

			se(temp_click == m.BOTAO_ESQUERDO e m.posicao_x() >= 680 e m.posicao_x() <= 720 e m.posicao_y() >= 0 e m.posicao_y() <= 40 )
			{
				opcao = 1
			}
		}
		
		
	}

	funcao segunda_parte()
	{

		inteiro temp_click = -1

		g.definir_opacidade(255 - transparencia)
		
		se(transparencia < 255)
		{
				g.desenhar_imagem(0, 0, fundo_tela)

	
			se(m.algum_botao_pressionado())
			{
				temp_click = m.ler_botao()
	
				se(temp_click == m.BOTAO_ESQUERDO e m.posicao_x() >= 0 e m.posicao_x() <= 60 e m.posicao_y() >= 47 e m.posicao_y() <= 93 )
				{
					mudar_tela = verdadeiro
				}
			}
		}
		se(mudar_tela == verdadeiro)
		{
			transparencia+=5
		}
		se(transparencia == 255)
		{
			transparencia = 0
			opcao = 2
			mudar_tela = falso
		}
	
		
	}
	
	funcao desenhar()
	{
		g.definir_opacidade(transparencia)
		
		g.definir_cor(0x0179D8)
		g.limpar()
		
		para(inteiro i = 0; i < 5; i++)
		{	
				
				se(posicao[i] < 360)
				{
					se(posicao[i] >= 90 e posicao[i] <= 330)
					{
						g.definir_rotacao(posicao[i])
						g.desenhar_imagem((g.largura_janela() / 2) - (80 / 2), (g.altura_janela() / 2) - (80 / 2), bola_maldita)
						posicao[i]+=4
	
					}
					senao
					{
						g.definir_rotacao(posicao[i])
						g.desenhar_imagem((g.largura_janela() / 2) - (80 / 2), (g.altura_janela() / 2) - (80 / 2), bola_maldita)
						posicao[i]++
					}
					
				}
				senao
				{
					posicao[i] = 0
				}
				se(posicao[0] == 360 e i == 0)
				{
					voltas++
				}
					se(voltas % 3 == 0)
				{
					
					g.definir_cor(0x0179D8)
					g.definir_rotacao(0)
					g.desenhar_elipse((g.largura_janela() / 2) - 60, (g.altura_janela() / 2) - 25, 80, 80, verdadeiro)
					
					se(posicao[i] >= 180 e posicao[i] <=270)
					{
						u.aguarde(3)
					}
				
				}
				
		}
		
		fim_contador = u.tempo_decorrido()
		
		g.definir_cor(g.COR_BRANCO)
		g.definir_rotacao(0)
		g.definir_tamanho_texto(32.0)
		g.definir_estilo_texto(falso, falso, falso)
		g.desenhar_texto((g.largura_janela() / 2) - (g.largura_texto("Trabalhando nas atualizações " + tp.inteiro_para_cadeia((((fim_contador - inicio_contador) / 1000) / 2), 10) + "%") / 2), (g.altura_janela() / 2) + 70, "Trabalhando nas atualizações " + tp.inteiro_para_cadeia((((fim_contador - inicio_contador) / 1000) / 2), 10) + "%")
		g.desenhar_texto((g.largura_janela() / 2) - (g.largura_texto("Não desligue o computador. Isso pode demorar um pouco.") / 2), (g.altura_janela() / 2) + 100, "Não desligue o computador. Isso pode demorar um pouco.")

		se(transparencia < 255)
		{
			transparencia += 5
			
		}
		
		chamar_aviao_mensagem()
		
	}

	funcao chamar_aviao_mensagem()
	{
		 inteiro contador
		 inteiro contador_condicao

		contador_condicao = ((fim_contador - inicio_contador) / 10)
		
		se( contador_condicao > 500)
		{
			
			g.desenhar_imagem(g.largura_janela() - contador_condicao + 500 , 600, aviao_mensagem)
			
			g.definir_cor(g.COR_PRETO)
			g.definir_estilo_texto(falso, verdadeiro, falso)
			g.definir_tamanho_texto(40.0)
			g.desenhar_texto(g.largura_janela() - contador_condicao + 760 , 642, "VOCÊS NÃO CAIRAM NESSA NÃO NÉ? #GLOBOMECONTRATA #TOCOMTEMPOSOBRANDO")
			
		}
		
	}

	funcao carregar_imagens()
	{
		inteiro temp_img = 0
		
		temp_img = g.carregar_imagem("./imagens/bola_maldita.png")
		bola_maldita = g.redimensionar_imagem(temp_img, 80, 80, verdadeiro)
		g.liberar_imagem(temp_img)

		temp_img = g.carregar_imagem("./imagens/fundo_tela.jpg")
		fundo_tela = g.redimensionar_imagem(temp_img, g.largura_tela(), g.altura_tela(), verdadeiro)
		g.liberar_imagem(temp_img)

		temp_img = g.carregar_imagem("./imagens/fundo_portugol.jpg")
		fundo_portugol = g.redimensionar_imagem(temp_img, largura_fundo_portugol, altura_fundo_portugol, verdadeiro)
		g.liberar_imagem(temp_img)

		temp_img = g.carregar_imagem("./imagens/aviao_mensagem.png")
		aviao_mensagem = g.redimensionar_imagem(temp_img, 1986, 125, verdadeiro)
		g.liberar_imagem(temp_img)
		
	}

	funcao inicializar(inteiro largura_janela_atual, inteiro altura_janela_atual)
	{
		
		se(inicializado == 0)
		{
			g.iniciar_modo_grafico(verdadeiro)
			inicializado++	
		}
		
		g.definir_dimensoes_janela(largura_janela_atual, altura_janela_atual)
		g.ocultar_borda_janela()
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 212, 11, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
[VOLTAR AO INICIO](../README.md)
# Índice

- [Bubllesort Interativo com Modo Gráfico do Portugol Studio](#bubllesort-interativo-com-modo-gráfico-do-portugol-studio)
- [Bubblesort com Easter Egg](#bubblesort-com-easter-egg)
- [Bubllesort vs Mergesort, Qual o Desempenho em Tempo Real?](#bubllesort-vs-mergesort-qual-o-desempenho-em-tempo-real)

---

## Merge Sort vs. Bubble Sort

### O que é um algoritmo de ordenação?

Um algoritmo de ordenação é um conjunto de instruções que reorganiza uma lista de elementos em uma ordem específica, como crescente ou decrescente.

### Merge Sort

* **Princípio:** Divide a lista a ser ordenada em sublistas menores, ordena essas sublistas recursivamente e, em seguida, combina as sublistas ordenadas em uma única lista ordenada.
* **Complexidade:** O(n log n) no melhor, médio e pior caso, o que o torna muito eficiente para grandes conjuntos de dados.
* **Vantagens:**
  * Eficiente para grandes conjuntos de dados.
  * Estável: mantém a ordem relativa de elementos iguais.
* **Desvantagens:**
  * Requer espaço extra para armazenar as sublistas durante a fusão.

### Bubble Sort

* **Princípio:** Compara elementos adjacentes e os troca de lugar se estiverem na ordem errada. Repete esse processo até que a lista esteja ordenada.
* **Complexidade:** O(n²) no pior e médio caso, o que o torna ineficiente para grandes conjuntos de dados.
* **Vantagens:**
  * Fácil de implementar.
* **Desvantagens:**
  * Lento para grandes conjuntos de dados.
  * Ineficiente em comparação com outros algoritmos.

### Comparação

| Característica | Merge Sort | Bubble Sort |
|---|---|---|
| Eficiência | Muito eficiente | Ineficiente para grandes conjuntos |
| Complexidade | O(n log n) | O(n²) |
| Estabilidade | Estável | Estável |
| Espaço extra | Requer | Não requer |
| Implementação | Mais complexa | Mais simples |

### Algoritmo em Portugol Studio

* Com base nos estudos de lógica de programação e conforme eu me aprofundava cada vez mais na biblioteca gráfica do **Portugol Studio**, resolvi desenvolver este algoritmo didático para mostrar visualmente a diferença de tempo para ordenação de um vetor com os metódos merge sort e bublle sort.

## Bubllesort Interativo com Modo Gráfico do Portugol Studio


## Bubblesort com Easter Egg

### Funcionamento do Algoritmo

* O algoritmo foi feito para estudos e com um switch case de 6 opções.
* O entrega era apenas para desenvolver um Bubllesort no prompt de comando da IDE Portugol Studio.
* Ao lema de sempre superar os meus próprios limites, implementei uma opção 7 para então trazer para a tela um "Easter Egg"
* Existe toda a lógica por trás desse projeto, sendo assim interativo e com animações.

### Imagens do Algoritmo em funcionamento
![Image](https://github.com/user-attachments/assets/fbc2e5fc-fe15-4347-826b-7f427de24acd)
---
![Image](https://github.com/user-attachments/assets/25e921ca-3994-4aeb-96f5-76e87f7fae8f)
---

## Bubllesort vs Mergesort, Qual o Desempenho em Tempo Real?

### Funcionamento do Algoritmo

* O algoritmo começa definindo o valor de 5000 posições para o vetor e cria valores em ordem crescente em cada posição do vetor.
* Na sequencia o algoritmo faz o embaralhamento do vetor com o método de Fisher-Iates.
* Então é chamado inicialmente a função com o metódo Bublle Sort e no momento da chamada começa a contagem do tempo e finaliza quando a função termina de organizar.
* Agora é a vez embaralhar novamente e de chamar a função do Merge Sort e novamente no mesmo processo, começamos a contar o tempo quando a função é chamada e termina quando a função tiver terminado de organizar o vetor.
* Por último, com os devidos tempos coletados, faço com que eles sejam plotados em uma pequena tela como na foto abaixo e após a plotagem com os dados de 5000 posições no vetor, o algoritmo recomeça adicionando novamente 5000 posições no vetor e esse processo se repete até termos o gráfico final como na foto abaixo.

### Visualização

![mergesort-bubllesort](https://github.com/user-attachments/assets/729336f5-ca29-4e64-8aaf-64008ab8bb2c)
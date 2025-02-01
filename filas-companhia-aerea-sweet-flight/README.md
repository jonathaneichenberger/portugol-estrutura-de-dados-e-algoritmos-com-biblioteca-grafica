# Estrutura de Dados: Filas

Uma fila (ou **queue**) é uma estrutura de dados do tipo linear que segue o princípio de **primeiro a entrar, primeiro a sair (FIFO)**, ou seja, o primeiro elemento a ser inserido na fila será o primeiro a ser removido. É como uma fila de pessoas em um caixa de supermercado, onde a pessoa que chega primeiro é atendida primeiro.

## Operações principais:

1. **Enfileirar (Enqueue):** Adiciona um elemento ao final da fila.
2. **Desenfileirar (Dequeue):** Remove o elemento do início da fila.
3. **Frente (Front):** Acessa o elemento que está no início da fila, sem removê-lo.
4. **Vazia (IsEmpty):** Verifica se a fila está vazia.
5. **Tamanho (Size):** Retorna o número de elementos na fila.

### Exemplos de uso de filas:
- **Gerenciamento de tarefas:** Em sistemas operacionais, onde os processos são enfileirados e executados na ordem em que são solicitados.
- **Fila de impressão:** Em impressoras, onde os trabalhos são processados na ordem em que são enviados para a impressora.

## Implementação:
As filas podem ser implementadas com arrays ou listas encadeadas, dependendo das necessidades do sistema.

### Exemplo de fila:
```java
Queue<Integer> fila = new LinkedList<>();
fila.offer(10);  // Adiciona o elemento 10
fila.offer(20);  // Adiciona o elemento 20
System.out.println(fila.poll()); // Remove e imprime o primeiro elemento: 10

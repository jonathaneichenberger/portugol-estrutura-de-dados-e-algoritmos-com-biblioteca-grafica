
### Estrutura de Dados: Pilhas

```markdown
# Estrutura de Dados: Pilhas

Uma pilha (ou **stack**) é uma estrutura de dados do tipo linear que segue o princípio de **último a entrar, primeiro a sair (LIFO)**. Isso significa que o último elemento a ser inserido é o primeiro a ser removido. Imagine uma pilha de livros: você coloca o livro no topo e retira o livro do topo quando precisa.

## Operações principais:

1. **Empilhar (Push):** Adiciona um elemento ao topo da pilha.
2. **Desempilhar (Pop):** Remove o elemento do topo da pilha.
3. **Topo (Top/Peek):** Acessa o elemento do topo da pilha, sem removê-lo.
4. **Vazia (IsEmpty):** Verifica se a pilha está vazia.
5. **Tamanho (Size):** Retorna o número de elementos na pilha.

### Exemplos de uso de pilhas:
- **Chamada de função:** A pilha é usada para armazenar o histórico de chamadas de função durante a execução de um programa.
- **Navegação em navegadores:** Em navegadores de internet, a pilha pode ser usada para gerenciar o histórico de páginas visitadas, permitindo que o usuário volte à página anterior.

## Implementação:
As pilhas podem ser implementadas usando arrays ou listas encadeadas, mas as listas encadeadas são mais eficientes, pois não precisam de um tamanho fixo.

### Exemplo de pilha:
```java
Stack<Integer> pilha = new Stack<>();
pilha.push(10);  // Adiciona o elemento 10
pilha.push(20);  // Adiciona o elemento 20
System.out.println(pilha.pop()); // Remove e imprime o topo: 20

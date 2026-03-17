# Sobre o transdutor

## Definição Formal do Transdutor

O sistema é definido como um Transdutor de Mealy através da sêxtupla $M = (Q, \Sigma, \Gamma, \delta, \omega, q_0)$, onde:

* **$Q$ (Conjunto de Estados):** Um conjunto finito de estados que representam a "memória" do conversor (por exemplo, estados que indicam que um `I`, `X` ou `C` foi lido e aguarda o próximo símbolo para decidir se haverá subtração ou adição).
* **$\Sigma$ (Alfabeto de Entrada):** $\{I, V, X, L, C, D, M\}$, correspondente aos símbolos romanos.
* **$\Gamma$ (Alfabeto de Saída):** $\{0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$, utilizado para compor a representação decimal.
* **$\delta$ (Função de Transição):** $Q \times \Sigma \rightarrow Q$, que mapeia o estado atual e o símbolo lido para o próximo estado.
* **$\omega$ (Função de Saída):** $Q \times \Sigma \rightarrow \Gamma^*$, que define a string de saída com base no estado atual e no símbolo de entrada. É aqui que a lógica de subtração (ex: ler `X` estando no estado `I`) gera o valor transformado.
* **$q_0$ (Estado Inicial):** $q_0 \in Q$, o estado onde a leitura do numeral começa.

## Alfabeto de entrada e saída

Para o alfabeto de entrada, temos todos os numerais romanos, dados por 

`Σ ={I, V, X, L, C, D, M}`

O transdutor converte numerais romanos para arábicos, então o alfabeto de saída é dado por

`Γ = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}`

## Tipo de transdutor (Mealy ou Moore)

o tipo de transdutor implementado foi o de Mealy, que produz o alfabeto de saída durante as transições.

a justificativa é porque em números romanos as transições importam mais que o estado atual em alguns casos, como os de subtração.

Por exemplo, ao irmos do numeral `I` para `X`, queremos dizer `10 - 1 = 9` Logo, a transição de `I` para `X` vale 9, e não `1 + 10 = 11`. 

## Dinâmica de Saída e Transições

No Transdutor de Mealy projetado, a emissão de símbolos do alfabeto de saída $\Gamma$ não ocorre em todas as transições. Como a numeração romana é posicional e subtrativa, o estado atual muitas vezes serve como um "buffer" de incerteza.

### 1. Transições sem Alfabeto de Saída (Saída Vazia $\epsilon$)
Existem momentos em que o transdutor lê um símbolo, mas não pode emitir um valor arábico imediatamente, pois o valor real depende do próximo caractere. Nestes casos, a função de saída $\omega$ produz uma string vazia ($\epsilon$).

* **Exemplo:** No estado inicial $q_0$, ao ler o símbolo `I`, o transdutor transita para um estado $q_I$, mas a saída é vazia. 
    * $\delta(q_0, I) \to q_I$
    * $\omega(q_0, I) \to \epsilon$
* **Por quê?** O sistema ainda não sabe se esse `I` vale $1$ (em `II`) ou se ele será subtraído (em `IV` ou `IX`).

### 2. Transições com Emissão de Símbolos
A saída é emitida quando o transdutor confirma o valor de um símbolo acumulado ou resolve uma regra subtrativa.

Como os números romanos funcionam como um "caminho sem volta", os símbolos são emitidos sempre que trocamos de casa nos valores. Ou seja, quando o autômato passa de um estado que pertence a casa dos milhares, e vai para um das centenas ou dezenas, ele confirma que já terminou e imprime o valor.

* **Exemplo:**  No estado $q_XX$, ao ler o símbolo `I`, o transdutor transita para $q_I$ e emite 2. Ao finalizar a *string*, o transdutor transiciona de $q_I$ para $q_FIM$, emitindo 1 e devolvendo o valor final completo 21.

### 3. Valores rejeitados
O sistema rejeita as cadeias se não houver uma transição do estado atual para o próximo caractere.
* **Exemplo:** No estado $q_V$, ao ler o símbolo `V`, o transdutor não tem para onde transitar e rejeita a cadeia, em conformidade com o fato de que `VV` não é um valor válido em números romanos. 


## Limitações

o objetivo desse projeto não é converter números romanos para arábicos da forma mais eficiente e curta, mas sim resolver isso usando modelagem de autômatos finitos discretos. Além disso, a atividade proposta impôs algumas limitações:

- Não será permitido o uso de *gems* ou bibliotecas de estado de finito;
- Não usar tabelas ou *hash*, só transições de estado.

Portanto, a implementação reflete a modelagem do **AFD** e as restrições.

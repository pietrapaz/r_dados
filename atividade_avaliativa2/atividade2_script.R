# Atividade Avaliativa 2 
# Pietra Paz | 22401571

# Parte 1: perguntas teóricas
# exemplo de dataframe 
lista_mercado <- data.frame(
  frutas = c("Ameixa", "Banana", "Limão", NA),
  bebidas = c("Suco", "Leite", NA, NA),
  itens_de_higiene = c("Pasta de dente", "Desodorante", "Shampoo", "Fio dental")
)
print(lista_mercado)

# exemplo de matriz
matriz <- matrix(c("Melão", "Melancia", "Maçã", "Morango", "Manga", "Mamão"), nrow=3, ncol = 2)
print(matriz)

# exemplo ao tentar inserir mais de um tipo na matriz
matriz2 <- matrix(c(1,2,3,"a", "b", "c"), nrow = 2, ncol = 3)

print(matriz2)

# os numeros se tornam caracteres
class(matriz2[1,1])

# exemplo de operadores básicos
x <- 10
y <- 2

soma <- x + y
print(soma)

subtracao <- x - y
print(subtracao)

multiplicacao <- x * y
print(multiplicacao)

divisao <- x / y
print(divisao)

divisao_inteira <- x %/% y
print(divisao_inteira)

# resto da divisao
modulo <- x %% y
print(modulo)

potenciacao <- x ^ y
print(potenciacao)

potenciacao2 <- x ** y
print(potenciacao2)

# ha uma funcao para o calculo da raiz quadrada
raiz_quadrada <- sqrt(x)
print(raiz_quadrada)

# exemplo de operadores relacionais
10 > 2
10 < 2
10 >= 2
10 <= 2
10 == 2
10 != 2

# exemplo de operadores lógicos
# só é TRUE se ambas as condições forem verdadeiras
(10 > 2) & (5 > 3)
(10 > 2) & (5 < 3)
(10 < 2) & (5 < 3)

# só é TRUE se pelo menos uma condição for verdadeira
(10 > 2) | (5 > 3)
(10 > 2) | (5 < 3)
(10 < 2) | (5 < 3)

# inverte o valor da condição
(10 > 2)
!(10 > 2)

(5 < 3)
!(5 < 3)

# Parte 2: Prática com data.frame
# criando o dataframe 
estudantes <- data.frame(
  nome = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
  idade = c(20, 22, 23, 19, 25),
  curso = c("Ciência de Dados", "Engenharia", "Matemática", "Ciência da Computação", "Estatística"),
  nota_final = c(8.5, 5.0, 7.0, 9.0, 6.5)
)
print(estudantes)

# estudantes que obtiveram nota_final maior ou igual a 7
estudantes[estudantes$nota_final >= 7, ]

# estudantes com idade menor que 25 e nota maior ou igual a 7
estudantes[estudantes$idade < 25 & estudantes$nota_final >= 7, ]

# Parte 3: Análise e Manipulação de Dados
# calculando a média das notas finais dos estudantes
media_estudantes <- mean(estudantes$nota_final)
print(media_estudantes)

# adicionando uma nova coluna contendo TRUE para nota_final >= 7 e FALSE para os demais
estudantes$aprovado <- estudantes$nota_final >= 7
print(estudantes)

# calculando porcentagem de estudantes aprovados no curso
num_aprovados <- sum(estudantes$aprovado)
total_estudantes <- nrow(estudantes)
porcentagem_aprovados <- (num_aprovados/total_estudantes)*100
cat("Porcentagem de aprovados: ", porcentagem_aprovados, "%")

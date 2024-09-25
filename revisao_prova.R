# criando meu primeiro script no rstudio
mensagem <- "vou passar em introducao a r com ss"
print(mensagem)
#rm(mensagem) apaga a variavel

# alt - <-
#ctrl s salva
# ctrl L limpa o console (nao apaga da memoria)
x <- 1
b <- 2
B <- 3

#limpa tudo da memoria: rm(list = ls())
# ls() todas as variaveis que tem na memoria
# ?print como usar 
# ctrl shift setinha pra selecionar
# ctrl enter roda

#duvidas sobre funcoes 
?print
?log
?mean
help(mtcars)
data(mtcars)

#variaveis
x1 <- 2
x_objeto <- 2

a <- 1
b <- 2
c <- 3
z <- "Pietra"
y <- "Abner"
class(a)
class(b)
class(c)
class(z)

#calculos
a <- 5
b <- 5
c <- 6

soma <- (a+b)
subtracao <- (a-b)
multiplicacao <- (a*c)
divisao <- (a/b)
print(soma, multiplicacao)
print(paste(soma,",",multiplicacao))

#################################################################

# atalhos
# alt - : <-
# ctrl shift N : criacao de new file R script
# ctrl shift seta: selecionar linhas
# ctrl enter: rodar o codigo
# ctrl L: limpar o console 
# Ctrl Alt I: chunks

mensagem <- "Vou passar em introdução a R com SS"
print(mensagem)

#duvidas sobre as funcoes
?print
?log
?mean
help(mean)
help(mtcars) 

# estrutura de dados
# variaveis
# pode usar . e _ para separar palavras
x <- "teste"
y <- 6
z <- 4.89
verdadeiro <- TRUE
testando_variavel <- "Testando variavel com _"
testando.variavel <- "Testando variavel com ."
Testando_variavel <- "Testando variavel com inicial maiuscula"
print(testando.variavel)
print(testando_variavel)
print(Testando_variavel)

# visualizando variaveis
ls()

# removendo variaveis
rm()
rm(Y, Z) #remove uma variavel em especifico
rm(list = ls()) #remove todas as variaveis existentes

# tipos:
# numeric: numeros reais
# integer: numeros inteiros
# character: para texto
# logical: booleano (true/false)
# factor(variaveis categoricas)
# date (datas)

#classificando
class(x)
class(testando.variavel)
class(y)
class(z)
class(verdadeiro)

# vetor, fator, lista, dataframe, matriz

########################################################

a <- 10
b <- 3

divisao_inteira  <-  a%%b

sqrt     

a <- 1
b <- -7
c <- 10

#bhaskara em R

#criando vetor
vetor <- c("Abacaxi", "Banana", "Uva", "Melancia", "Mexerica")
print(vetor)

#acessando vetor
print(vetor[1])
print(vetor[3:5])

#adicionando novo elemento
vetor <- c(vetor, "Cereja", "Pessego")
print(vetor)

#adicionar novo elemento em um local especifico
print(vetor[3])
vetor[3] <- "Graviola"
print(vetor)

#excluindo elemento
vetor <- vetor[-3]
print(vetor)

#excluindo elemento da memoria (so com numeros)
vetor <- c("Abacaxi", "Banana", "Graviola", "Melancia", "Mexerica", "Cereja", "Pessego")
vetor <- vetor[vetor != 3]
print(vetor)

#com caracteres
cidade <- c("Brasilia",
            "Sao Paulo",
            "Rio de Janeiro",
            "Porto Alegre")
print(cidade)

temperatura <- c(32,22,35,17)
print(temperatura)

regiao <- c(1,2,3,4)
print(regiao)

cidade[2]
temperatura[1:3]

#versionando vetores
cidade2 <- cidade
print(cidade2)

temperatura[-2]

cidade2[2] <- "Belo Horizonte"
print(cidade2)

cidade2[7] <- "Curitiba"
print(cidade2)

cidade2 <- c("Fortaleza", cidade2)
print(cidade2)
cidade2 <- cidade2[-1]

print(paste(temperatura, regiao))

############################################

# variaveis, vetores, fatores, string, instalacao de pacotes

install.packages("dslabs")
library(dslabs)

# Chamar o dataframe
help(murders)
data(murders)
class(murders)

murders$state <- toupper(murders$state)
murders$state <- tolower(murders$state)
print(murders$state)

murders$state_length <- nchar(murders$state)
print(murders$state_length)


# fatores
dias <- c("seg", "ter", "qua", "qui", "sex")
fator_dias <- factor(dias)
print(fator_dias)

levels(fator_dias) <- c(levels(fator_dias), "sab", "dom")
print(fator_dias)

fator_dias <- factor(fator_dias, levels = c("seg", "ter", "qua", "qui", "sex"))
print(fator_dias)

filmes <- c("Moonlight", "Venom", "Coringa", "Matrix", "Pulp Fiction")
avaliacoes <- c(5, 4.5, 3, 4, 4.5)
generos <- factor(c("Drama", "Fantasia", "Crime", "Ficção Científica", "Drama"))

levels(generos)

table(generos)

tapply(avaliacoes, generos, mean)

###########################################################

dados <- data.frame(
  coluna1 = c(1,2,3),
  coluna2 = c("a", "b", "c"),
  coluna3 = c(TRUE, FALSE, TRUE)
)

#acessa as colunas
dados$coluna1

# acessa a linha 
dados[1,] 

# acessa primeiro a linha e depois a coluna
dados[1,3]

# aparece null pois a coluna 4 nao existe
dados[1,4]

# operadores relacionais
5>3
10==10

# operadores logicos 
(5>3) & (10<=20)
!(5==5)

# selecao condicional 
dados_filtrados <- dados[dados$coluna1 > 1, ]
print(dados_filtrados) 

# adicionar nova coluna 
dados$coluna4 <- c("novo", "valor", "aqui") 

# adiciona nova linha
dados[6,] <- c("teste", "azul", "vermelho", "amarelo") 

dados2 <- dados

# modificar coluna existente (valores numericos)
dados2$coluna1 <- dados2$coluna1 * 2 

# remover linha

dados2 <- dados2[-4, ] 
dados2 <- dados2[-5, ] 
dados2 <- dados2[-6, ] 


# COMO REMOVER VARIAS LINHAS ESPECIFICAS SEM PRECISAR FAZER MANUALMENTE O TEMPO TODO

# remover dado da linha
dados[6, 3] <- NA 

# calcular a media
mean() 

# obter resumo estatistico
summary()

# acessar base de dados do r
data()
data(WorldPhones)

# quais sao as colunas
names(WorldPhones)

data(cars)
names(cars) 

# usar dataframe 
install.packages("dslabs")
library(dslabs) 

# obs - linhas | variables - colunas
data(murders)
class(murders)

# resumo do dataframe: tipos
str(murders) 

# comeco da base; primeiras linhas 
head(murders) 

# acessando
murders$population #accessor $
murders$region #accessor $
names(murders)

# criando variavel para atribuir valores somente de uma coluna
pop <- murders$state

# quantidade de variaveis (colunas)
length(pop)

# ??????
class(pop)
class(murders$state)

# fatores
class(murders$region)
levels(murders$region)

# ??????
data(movielens)
class(movielens) 

# 
# str()
# head()
# names()

# quantas linhas tem
str(movielens) # mostra linhas colunas e tipos
nrow(movielens)

# quantas variaveis (colunas) tem?
length(movielens)

# tipo da variavel title
class(movielens$title)

# tipo da variavel 
class(movielens$genres)

# tipos diferentes de genres
levels(movielens$genres)

# quantidade de filmes de romance ????????

#######################################################

# sequencias regulares de numeros
seq(1,10)

seq( ,10)

seq(1,10,2)

seq(0,100,5)

seq(from=1,to=10,by=2) 

x<-seq(0,100,length.out=5)
print(x)

y <- seq(0,100,length.out=7)
print

# criando matriz 
matriz <- matrix(1:6,nrow=2,ncol=3)
print(matriz)

# dando nome para linha e coluna 
rownames(matriz) <- c("Preço1", "Preço2")
colnames(matriz) <- c("Banana", "Maçã", "Laranja")
print(matriz)

# outra forma (pegar slide)

# outra forma 
M <- as.matrix(data=women)
print(M)

M <- as.matrix(women)
class(M)

# acessando elementos
matriz[1,2]
M[2,1]
M[2, ]
M[ ,2]
M[ ,1:2]
M[1:2,1]

as.data.frame(M)
as.matrix(M)

matriz2 <- matrix(6:1, nrow=2, ncol=3)
print(matriz2)

soma <- matriz + matriz2
print(soma)

subtracao <- matriz - matriz2
print(subtracao)

multi <- matriz * matriz2
print(multi)

divisao <- matriz / matriz2
print(divisao)

M1 <- matrix(c(1,2,3,4), nrow=2) # uma matriz 2x2 
M2 <- matrix(c(2,1,0,3), nrow=2) # outra matriz 2x2 

M3 <- matrix(c(1,3,5,7,9,NA), ncol= 2)

# %*% multiplica matriz da maneira correta
resultado <- M1 %*% M2
print(resultado)

# criando transposta
transposta <- t(matriz)
print(transposta)

# transversal - faz a mao ao contrario ex. 1:6 e 6:1


# extrair a diagonal | serve para ver a correlacao
diag_valores <- diag(matriz)
print(diag_valores)

diag(matriz) <- c(10,20)
print(matriz)

# matriz de zeros
zeros <- matrix(0, nrow=3, ncol=3)
print(zeros)

# matriz de uns
uns <- matrix(1,nrow=3,ncol=3)
print(uns)

# adicionando matrizes
matriz_A <- matrix(1:4, nrow=2)
matriz_B <- matrix(5:8, nrow=2)

# combinacao horizontal
horizontal <- cbind(matriz_A, matriz_B)
print(horizontal)

# combinacao vertical
vertical <- rbind(matriz_A, matriz_B)
print(vertical)

#################################################

# funcao list
list() 

i <- list(2, 3, "c", "d", FALSE, 2+3i, 4+2i) 
i 

# criando uma lista e atrelando a nomes 
minha_lista <- list(nome="Abner", idade=30, notas=c(8, 9, 10)) 

print(minha_lista) 

# acessar o campo nome primeira forma
minha_lista$nome # saida abner

# acessar o campo nome segunda forma
minha_lista[[1]] #saida abner

minha_lista$notas[[2]]

# adicionar um novo campo
minha_lista$curso <- "ciencia de dados" 
minha_lista$curso 
minha_lista[[4]] 

# remover o campo nome
minha_lista$nome <- NULL 
minha_lista$nome 

minha_lista

# lista com diferentes tipos de dados
exemplo_lista <- list(inteiro=1, texto="oi", booleano=TRUE)

# criar uma lista que contem outra lista
lista_aninhada <- list(primeira_lista = exemplo_lista, numero=42)

# acessar um elemento dentro de uma lista aninhada
lista_aninhada$primeira_lista$texto #devera retornar Oi

# converter lista para vetor
lista_simples <- list(1,2,3)
vetor_convertido <- unlist(lista_simples) # devera retornar um vetor c(1,2,3)

# nomear elementos de uma lista ja existente
names(exemplo_lista) <- c("Int", "Str", "Bool")
exemplo_lista

# remover elementos de uma lista pelo nome
exemplo_lista$Int <- NULL
exemplo_lista

# ordenacao de dados
install.packages("dplyr")
library(dplyr)

df <- data.frame(nome=c("Ana", "Bob", "Cid"), idade=c(23,45,19))
df 

# ordenar pela idade 
df_ordenado <- arrange(df,idade) 
print(df_ordenado) 

df_ordenado_nome <- arrange(df,nome) 
print(df_ordenado_nome) 

data(murders) 

sort(murders$total)

# crie um novo vetor
x <- c(31,4,15,92,65)
x

#######################################################

install.packages("matrixStats")
library(matrixStats)

matriz_vendas <- matrix(sample(50:100), nrow = 3, ncol = 3)
set.seed(72) 

rownames(matriz_vendas) <- c("Produto1", "Produto2", "Produto3")
colnames(matriz_vendas) <- c("Janeiro", "Fevereiro", "Março")

##########################################################

# Desafio: Análise de vendas

# Suponha que você seja um analista de dados em uma empresa de eletrônicos. 
# Você tem um vetor que representa as vendas de smartphones de uma semana (em milhares de reais), 
# onde cada elemento do vetor representa um dia da semana, começando pela segunda-feira:
# - vendas <- c(5, 7, 3, 8, 9, 4, 6)
# O fim de semana começa na sexta-feira. 
# - Adicione ao vetor as vendas de smartphones as vendas da segunda e terça-feira da próxima semana, 
# que foram de 10 mil e 11 mil reais, respectivamente.
# - A loja estava fechada na quarta-feira da semana passada devido a uma reforma. 
# Remova as vendas da quarta-feira do vetor.
# - Na quinta-feira, houve um erro de digitação e as vendas foram registradas como 8 mil reais, 
# quando na verdade foram de 12 mil reais. Corrija este erro no vetor.
# - Imprima o vetor atualizado das vendas.
# - Calcule e imprima a soma total e a média de vendas de smartphones ao longo dos dias registrados.

vendas <- c(5,7,3,8,9,4,6)
print(vendas)

vendas2 <- vendas
print(vendas2)

# adicionando valores de segunda e terca
vendas2 <- c(vendas2, 10, 11)
print(vendas2)

# adicionando valor zero na quarta 
vendas2[3] <- 0
print(vendas2)

# trocando o valor da quinta
vendas2[4] <- 12
print(vendas2)

# somando os valores
soma_total <- sum(vendas2)
print(paste("Soma total: ", soma_total))

# media
media = mean(vendas2)
print(paste("Media: ", media)) 

###################################################

# Atividade Avaliativa 2 
# Pietra Paz | 22401571

# Parte 1: perguntas teóricas
# exemplo de dataframe 
lista_mercado <- data.frame(
  itens_de_higiene = c("Pasta de dente", "Desodorante", "Shampoo", "Fio dental"),
  quantidade = c(5, 2, 3, 5)
)
print(lista_mercado)
class(lista_mercado$itens_de_higiene)
class(lista_mercado$quantidade)

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

########################################################

# 3 atividade m1

# criando lista
estudante <- list(nome="Maria", idade=20, notas=c(8,9,7), disciplinas=c("Matematica", "Historia"))

# acessando o campo nome
estudante$nome

# modificando a idade
estudante$idade <- 21

# adicionando novo campo
estudante$esporte <- "Futebol"

# removendo campo
estudante$esporte <- NULL

# criando nova lista
novo_estudante <- list(nome="Joao", idade=23, notas=c(9,6,8), disciplinas=c("Portugues", "Geografia"))

# criando lista aninhada
turma <- list(estudante=estudante, novo_estudante=novo_estudante) 
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

#################################################################
#################################################################
#################################################################

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

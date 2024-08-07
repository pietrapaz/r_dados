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

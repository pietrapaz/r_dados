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

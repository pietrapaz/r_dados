# PROVA 1: IRCD
# Aluna: Pietra Paz
# RA: 22401571

# Questao 01) 
#Resposta: Letra C 

# Questao 02)
# Resposta: Letra D 

# Questao 03)
# Resposta: Letra B 

# Questao 04)
# Resposta: Letra D 

# Questao 05)
# Resposta: Letra B 

# Questao 06)
# Resposta: Letra C 

# Questao 07)
# Resposta: Letra E 

# Questao 08)
# Resposta: Letra C 

# Questao 09)
# Resposta: Letra A

# Questao 10)
# Resposta: Letra D

# Questao 11)
# Resposta: Letra B
dados_experimentos <- list(list(list(data=c(1,2,3), replicate=c(10,20,30)), 
                                list(data=c(4,5,6), replicate=c(40,50,60)), 
                                list(data=c(7,8,9), replicate=c(70,80,90))), 
                           list(list(data=c(10,11,12), replicate=c(100,110,120)), 
                                list(data=c(13,14,15), replicate=c(130,140,150)), 
                                list(data=c(16,17,18), replicate=c(160,170,180)))) 
dados_experimentos[[1]][[2]][[3]]

# Questao 12)
# Resposta: Letra E
a <- 64
raiz_quadrada <- sqrt(a)
print(paste("Raiz quadrada de 64: ", raiz_quadrada))

# Questao 13)
# Resposta: Letra A
seq(1,200,by=15)

# Questao 14)
# Resposta: Letra A
install.packages("dslabs")
library(dslabs)

data(murders)

murders$state[44] <- toupper(murders$state[44])
print(murders$state)
print(murders$state[44])

# Questao 15)
# Resposta: Letra B
matriz <- matrix(1:16, nrow=4,ncol=4)
print(matriz)

# Questao 16)
# Resposta: Letra A
# como faria se tivessem 100 nomes para extrair os sobrenomes?
nome_completo <- "Pedro Henrique"
substr(nome_completo, 7, 14)

# Questao 17)
# Resposta: Letra C
murders$state[which.max(murders$total / murders$population * 100000)]

# Questao 18)
# Resposta: Letra A
dados_homicidios <- murders
dados_homicidios$state[which.min(dados_homicidios$total)]

# Questao 19)
# Resposta: Letra C
murders$state[order(murders$total / murders$population * 100000)]

# Questao 20)
# Resposta: Letra D
matrix(1:9, nrow=3, ncol=3)
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

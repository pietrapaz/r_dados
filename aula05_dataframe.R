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


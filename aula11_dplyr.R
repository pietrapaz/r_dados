#aula 11 - pacote dplyr (tidyverse)
# pipe - %>% - encadear blocos de codigo

# filter(), select(), arrange() (order, sort), 
# mutate(), summarize(), group_by(), 
# inner_join, left_join

# carregando o pacote
install.packages("dplyr")
library(dplyr)

# exemplo dataframe
df <- data.frame(
  Nome = c("Ana", "Bruno", "Carlos", "Dani", "Eva"),
  Idade = c(23,31,29,35,42),
  Score = c(87,90,78,85,92)
)

# funcao filter()
# filtrar linhas onde a idade > 30
df_filtrado <- filter(df, Idade > 30)

# funcao select()
# selecionar somente colunas nome e idade
df_selecionado <- select(df, Nome, Idade)

# funcao arrange()
# ordenar o data frame baseado no Score de forma descendente
df_ordenado <- arrange(df, desc(Score))

# funcao mutate()
# criar uma nova coluna chamada "categoria" 
# baseada na idade
df_mutate <- mutate(df, Categoria = ifelse(Idade > 30, "Senior", "Junior"))

# funcao summarise()
# calcular a media de idade e score
df_resumo <- summarise(df, Media_Idade = mean(Idade), Media_Score = mean(Score))

# funcoes group_by() e summarise()
# agrupar por Categoria e calcular a media de Score por grupo
df_agrupado <- df_mutate %>% 
  group_by(Categoria) %>%
  summarise(Media_Score = mean(Score))

# na pratica
install.packages("HSAUR2")
library(HSAUR2)
library(dplyr)

data(Forbes2000)
head(Forbes2000)

# filtrar empresas de tecnologia com vendas superiores a 30 bilhoes
tech_empresas <- Forbes2000 %>%
  filter(category == "Technology" & sales > 30)
head(tech_empresas)

unique(Forbes2000$category)
table(Forbes2000$category)

# selecionar as colunas relevantes
colunas_selecionadas <- Forbes2000 %>%
  select(name, category, sales, profits, assets)
head(colunas_selecionadas)

# listar as 10 empresas com maiores lucros
top_lucros <- Forbes2000 %>%
  arrange(desc(profits)) %>%
  head(10)
top_lucros

# criar uma nova coluna "profit_ratio" que eh a proporcao do lucro
# sobre as vendas
com_profit_ratio <- Forbes2000 %>%
  mutate(profit_ratio = profits / sales)
head(com_profit_ratio)

# agrupar empresas por categoria e obter a media de vendas
# e lucros por categoria
categoria_resumo <- Forbes2000 %>%
  group_by(category) %>%
  summarise(Media_Sales = mean(sales, na.rm = TRUE),
            Media_Profits = mean(profits, na.rm = TRUE))
head(categoria_resumo)

# obter a empresa com o maior numero de ativos em cada categoria
top_ativos <- Forbes2000 %>%
  group_by(category) %>%
  top_n(1,wt = assets)
head(top_ativos)

# APPLY (usado so em matrizes)
mat <- matrix(1:9, ncol=3)

# some por coluna sem apply (por loop)
result <- numeric(ncol(mat))
for(i in 1:ncol(mat)){
  result[i] <- sum(mat[, i])
}
result

# soma por coluna com apply (1 - linha; 2 - coluna)
apply(mat, 2, sum)

# LAPPLY()
lista <- list(a=1:5, b=6:10)

# calculo da media de cada elemento da lista sem apply (por loop)
result <- list()
for(i in 1:length(lista)){
  result[[i]] <- mean(lista[[i]])
}
names(result) <- names(lista)
result

# com o lapply
lapply(lista, mean)

# resultado em vetor, nao em lista
sapply(lista, mean)

# media de notas por turma sem tapply (com loop)
notas <- c(7,8,9,6,8)
turmas <- c('A', 'A', 'B', 'B', 'B')

unique_turmas <- unique(turmas)
result <- numeric(length(unique_turmas))
for(i in 1:length(unique_turmas)){
  result[i] <- mean(notas[turmas == unique_turmas[i]])
}
names(result) <- unique_turmas
result

# com tapply
tapply(notas, turmas, mean)


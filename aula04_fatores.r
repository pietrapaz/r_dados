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

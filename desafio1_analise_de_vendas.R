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

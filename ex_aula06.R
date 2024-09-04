install.packages("matrixStats")
library(matrixStats)

matriz_vendas <- matrix(sample(50:100), nrow = 3, ncol = 3)
set.seed(72) 

rownames(matriz_vendas) <- c("Produto1", "Produto2", "Produto3")
colnames(matriz_vendas) <- c("Janeiro", "Fevereiro", "Março")

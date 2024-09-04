# sequencias regulares de numeros
seq(1,10)

seq( ,10)

seq(1,10,2)

seq(0,100,5)

seq(from=1,to=10,by=2) 

x<-seq(0,100,length.out=5)
print(x)

y <- seq(0,100,length.out=7)
print

# criando matriz 
matriz <- matrix(1:6,nrow=2,ncol=3)
print(matriz)

# dando nome para linha e coluna 
rownames(matriz) <- c("Preço1", "Preço2")
colnames(matriz) <- c("Banana", "Maçã", "Laranja")
print(matriz)

# outra forma (pegar slide)

# outra forma 
M <- as.matrix(data=women)
print(M)

M <- as.matrix(women)
class(M)

# acessando elementos
matriz[1,2]
M[2,1]
M[2, ]
M[ ,2]
M[ ,1:2]
M[1:2,1]

as.data.frame(M)
as.matrix(M)

matriz2 <- matrix(6:1, nrow=2, ncol=3)
print(matriz2)

soma <- matriz + matriz2
print(soma)

subtracao <- matriz - matriz2
print(subtracao)

multi <- matriz * matriz2
print(multi)

divisao <- matriz / matriz2
print(divisao)

M1 <- matrix(c(1,2,3,4), nrow=2) # uma matriz 2x2 
M2 <- matrix(c(2,1,0,3), nrow=2) # outra matriz 2x2 

M3 <- matrix(c(1,3,5,7,9,NA), ncol= 2)

# %*% multiplica matriz da maneira correta
resultado <- M1 %*% M2
print(resultado)

# criando transposta
transposta <- t(matriz)
print(transposta)

# transversal - faz a mao ao contrario ex. 1:6 e 6:1


# extrair a diagonal | serve para ver a correlacao
diag_valores <- diag(matriz)
print(diag_valores)

diag(matriz) <- c(10,20)
print(matriz)

# matriz de zeros
zeros <- matrix(0, nrow=3, ncol=3)
print(zeros)

# matriz de uns
uns <- matrix(1,nrow=3,ncol=3)
print(uns)

# adicionando matrizes
matriz_A <- matrix(1:4, nrow=2)
matriz_B <- matrix(5:8, nrow=2)

# combinacao horizontal
horizontal <- cbind(matriz_A, matriz_B)
print(horizontal)

# combinacao vertical
vertical <- rbind(matriz_A, matriz_B)
print(vertical)

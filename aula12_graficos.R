# aula 12

# porta de entrada -> ggplot2
# R graphics, lattice, plotly, highcharter, leaflet, dygraphs, shiny, diagrammeR

# aes() = define as variaveis
# geom_* = , 

# hwy = milhas por galao na rodovia
# displ = volume do motor
# class = classificacao dos carros

install.packages("ggplot2")
install.packages("dslabs")

library(ggplot2)
library(dslabs)

data(mpg)

# grafico de dispersao
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) +
  labs(title = "Relacao entre Volume do Motor e Eficiencia de Combustivel",
       x = "Volume do Motor", y = "Eficiencia(hwy)", color = "Classe do Veiculo") +
  theme_minimal()

# de barras
ggplot(data = mpg, aes(x = class)) +
  geom_bar()

# boxplot
ggplot(data = mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

# carregando conjunto de dados
data("gapminder")

# filtrar dados para o Brasil
brazil_data <- subset(gapminder, country == "Brazil")

# grafico de linha simples mostrando a evolucao da expectativa de vida no Brasil
ggplot(brazil_data, aes(x = year, y = life_expectancy)) + 
  geom_line(color = "red") + 
  labs(title = "Evolucao da Expectativa de Vida no Brasil", x = "Ano", y = "Expectativa de Vida") +
  theme_minimal()

# histograma da coluna mpg do conjunto mtcars
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram(fill = "steelblue", color = "black", bins = 5) +
  labs(title = "Histograma de Milhas por Galao (mpg)", x = "Milhas por Galao") +
  theme_minimal

# 


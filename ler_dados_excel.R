library(readxl)
dados_idosos <- read_excel("Documents/GitHub/probabilidadeEInferenciaEstatistica/conjuntos_de_dados/dados_idosos.xlsx")
View(dados_idosos)

# informacoes do conjunto de dados
summary(dados_idosos)

# factor() altera para qualitativa
dados_idosos$sexo <- factor(dados_idosos$sexo, labels = c("masc", "fem"))

# dados_idosos$sexo1 <- factor(dados_idosos$sexo, labels = c("masc", "fem"))


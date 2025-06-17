library(readxl)
dados_idosos <- read_excel("~/Downloads/Lista_graficos-e-tabelas.xlsx")
View(dados_idosos)

# informacoes do conjunto de dados
summary(dados_idosos)

# factor() transforma dados_idosos$sexo em variável qualitativa
dados_idosos$sexo <- factor(dados_idosos$sexo, 
                            labels = c("masc", "fem"))

# dados_idosos$sexo1 <- factor(dados_idosos$sexo, 
#                                labels = c("masc", "fem"))

esquisse:::esquisser()

# exemplo 1
ggplot(dados_idosos) +
 aes(x = sexo) +
 geom_bar(fill = "#112446") +
 theme_minimal()

# exemplo 2
ggplot(dados_idosos) +
 aes(x = idade) +
 geom_histogram(bins = 30L, fill = "#112446") +
 labs(x = "Idade") +
 theme_minimal()

# exemplo 3
ggplot(dados_idosos) +
  aes(x = idade, y = Tri_lic) +
  geom_point(colour = "#112446") +
  labs(x = "Idade", y = "Triglicerídeos")
  theme_minimal()

# factor() transforma dados_idosos$DoencCronic em variável categorica
dados_idosos$DoencCronic <- factor(dados_idosos$doenças_crônicas, 
                                   levels = c(0,1,2,3,4,5,6))

summary(dados_idosos)

dados_idosos$imc2 <- factor(dados_idosos$imc2,
                           labels = c("eutrofia", "magreza", "excesso de peso"))

summary(dados_idosos)

esquisse:::esquisser()

ggplot(dados_idosos) +
  aes(x = imc2) +
  geom_bar(fill = "#112446") +
  theme_linedraw() +
  facet_wrap(vars(sexo))

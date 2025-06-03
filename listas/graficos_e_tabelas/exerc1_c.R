library(readxl)
dados <- read_excel("~/Downloads/lista_graficos-e-tabelas-3.xlsx")


summary(dados)
str(dados)

unique(dados$`Estado civil`)

dados$`Estado civil` <- factor(dados$`Estado civil`,
                               levels = c("solteiro", "casado"),
                               labels = c("Solteiro", "Casado"))

dados$`Grau de instrução` <- factor(dados$`Grau de instrução`,
                                    levels = c("ensino fundamental", "ensino médio", "superior"),
                                    labels = c("Ensino fundamental", "Ensino médio", "Superior"))

dados$`salário(x sal. mín.)` <- as.numeric(dados$`salário(x sal. mín.)`)

dados$`Região de procedencia` <- factor(dados$`Região de procedencia`,
                                        levels = c("interior", "capital", "outra"),
                                        labels = c("Interior", "Capital", "Outra"))

dados$`n de filhos`[is.na(dados$`n de filhos`)] <- "Não informado"

dados$`n de filhos` <- factor(dados$`n de filhos`,
                              levels = c("Não informado", "0", "1", "2", "3", "5"),
                              labels = c("Não informado", 0, 1, 2, 3, 5))

dados$`Idade(anos)` <- NULL
dados$`Idade(meses)` <- NULL

summary(dados)

casados <- subset(dados, `Estado civil` == "Casado")

tabela <- table(casados$`n de filhos`)

freq_simples_acumulada <- matrix(c(cumsum(tabela)))

freq_relativa <- matrix(c(100 * table(casados$`n de filhos`) / sum(table(casados$`n de filhos`))))

freq_relativa_acumulada <- matrix(100 * cumsum(tabela / sum(tabela)))

tabela <- data.frame(tabela, freq_simples_acumulada, freq_relativa, freq_relativa_acumulada)

tabela

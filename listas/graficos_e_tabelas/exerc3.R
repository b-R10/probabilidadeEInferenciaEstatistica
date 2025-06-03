library(fdth)

dados <- c(53.0, 70.2, 85.3, 69.5, 77.8, 87.5, 53.4, 82.5, 67.3, 54.1,
           70.5, 71.4, 95.4, 51.1, 74.4, 55.7, 63.5, 85.8, 53.5, 64.3,
           82.7, 78.5, 55.7, 69.1, 72.3, 59.5, 55.3, 73.0, 52.4, 50.7)

# letra A
# R: São variáveis quantitativas contínuas

# letra B
amplitude_total <- ( max(dados) - min(dados) )
h <- ceiling(amplitude_total / 7.95)

tabela <-fdt(dados,
             start = 50.7,
             end = 95.4,
             h = h
             )

tabela


hist(dados,
     breaks = 10,
     col = "lightblue",
     main = "Distribuicao dos dados",
     xlab = "Dados",
     ylab = "Frequencia")

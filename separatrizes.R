# Separatrizes
dados <- c(0.5,0.7,0.7,0.9,1.0,1.1,1.0,1.2,1.3,1.3,1.5,1.8,2.1,2.2,2.5, 8)
dados1 <- c(1.5,1.7,2,2.8,2.9,3,3.1,3.2,4,4.5,4.9,5,6,6.5,7,8)

## usando o comando summary
summary(dados)

## para representar a concentracao dos dados
boxplot(dados, dados1)

## quartis
quantile(dados)

# outras separatrizes
quantile(dados,
         probs = seq(0, 1, 0.25) # seq(inicio, fim, passo)
         )

## amplitude interquartil
### (terceiro quartil - primeiro quartil) / (max - min)
(1.875-0.975)/(2.5 - 0.5) # = % dos dados presentes entre o terceiro e primeiro quartil
IQR(dados) # terceiro quartil - primeiro quartil




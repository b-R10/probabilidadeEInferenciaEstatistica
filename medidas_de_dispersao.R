## Medidas de dispersao ##

#### grafico stripchart
#### coloca os valores na forma de pontos em uum eixo horizontal

dados <- c(70, 71, 69, 70, 70)
valores <- c(40, 80, 98, 62, 70)

# amplitude total
range(valores) ## identificar maior e menor valor
amplitudeTotal = max(valores) - min(valores)
amplitudeTotal

# desvio médio
media = mean(valores)
media
desvios = abs(valores - media)
desvios
desvioMedio = sum(desvios)/length(valores)
desvioMedio

## ou
desvioMedio = sum(abs(valores - mean(dados)))/length(dados)
desvioMedio

# variância amostral
var(dados) ## apenas para amostras!
var(valores)

# desvio-padrão
sd(dados)
sd(valores)

# coeficiente de variação
CV = sd(dados)/mean(dados)*100 ## valor em porcentagem
CV ## dados homogeneos
CV1 = sd(valores)/mean(valores)*100
CV1 ## dados heterogeneos

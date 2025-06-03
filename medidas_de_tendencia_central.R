dados <- c(18, 16, 15, 17, 17)
dados1 <- c(18, 16, 15, 17, 17, 25)

# media aritmetica
mean(dados)
mean(dados1)

# media geometrica
## manualmente
Mg <- (18*16*15*17*17)^(1/5)

## automatizada
Mg1 <- prod(dados)^(1/length(dados))

### ou
install.packages("psych")
library(psych)
geometric.mean(dados)

### outra opcao
Mg <- exp(mean(log(dados)))

# media harmonica
harmonic.mean(dados)

# mediana
a <- c(3,3,4,5,7,8,9,10,12)
median(a)
mean(a)

b <- c(3,3,4,5,7,8,9,10)
median(b)
mean(b)

# summary
summary(a)

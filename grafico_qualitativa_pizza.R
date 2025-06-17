x <- c(110, 12, 10, 8)

pie(x)
names(x) <- c("Nenhum", "Leve", "Moderada", "Severa")

# prop.table() faz a freq. relativa
xp <- prop.table(x)

pie(xp, labels = names(x), col = rainbow(4))

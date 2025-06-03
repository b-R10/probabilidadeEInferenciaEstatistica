# Graficos

x <- c(110, 12, 10, 8)

barplot(x, 
        xlab = "Categorias",
        ylab = "Frequências",
        names = c("Nenhum", "Leve", "Moderada", "Severa"),
        main = "titulo da figura",
        col = rainbow(4),
        #col = "red",
        #col = c("red", "green", "green", "green"),
        )
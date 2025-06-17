library(ggplot2)

valores_erros <- c(0, 1, 2, 3, 4)
valores_freq <- c(25, 20, 3, 1, 1)

table_freq <- data.frame(Erros = valores_erros, Frequencia = valores_freq)

barplot(table_freq$Frequencia,
        names.arg = table_freq$Erros,
        main = "Frequencia de erros",
        xlab = "Quantidade de erros",
        ylab = "Frequencia de erros",
        col = "skyblue"
        )

ggplot(table_freq, aes(x = factor(Erros), y = Frequencia)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Frequencia de erros", x = "Quantidade de erros", y = "Frequencia de erros") +
  theme_minimal()

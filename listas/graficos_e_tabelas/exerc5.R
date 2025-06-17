library(readxl)
library(ggplot2)

dados <- read_excel("~/Downloads/lista_graficos-e-tabelas-3.xlsx")
dados$`salário(x sal. mín.)` <- as.numeric(dados$`salário(x sal. mín.)`)

n <- 36
lim_inf <- 4.00
lim_sup <- 23.30
limites <- seq(lim_inf, lim_sup, length.out = n + 1)
valores_y = seq(1/n, 1, length.out = n)

df_segmentos <- data.frame(
  x_start = limites[-(n+1)], # sem o ultimo
  x_end = limites[-1],       # sem o primeiro
  y = valores_y
)

ggplot() +
  # segmentos horizontais
  geom_segment(data = df_segmentos,
               aes(x = x_start, xend = x_end, y = y, yend = y),
               color = "black", size = 1.5) +
  geom_point(data = df_segmentos,
             aes(x = x_start, y = y),
             shape = 16, size = 2.5, fill = "black") + # Pontos a esquerda
  geom_point(data = df_segmentos, 
             aes(x = x_end, y = y), 
             shape = 21, size = 2.5, fill = "white") +  # Pontos a direita
#  geom_point(data = dados,
 #            aes(x = `salário(x sal. mín.)`, y = valores_y),
  #           shape = 4, size = 3, color = "red", stroke = 1.5) + # Pontos reais
  labs(title = expression(F[36](s)),
       x = "s",
       y = expression(F[36](s))) +
  theme_minimal() +
  theme(text = element_text(size = 14))

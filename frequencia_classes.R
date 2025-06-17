#Construindo uma tabela de frequencia por classes
#Instalar o pacote fdth;

# install.packages("fdth")

#Carregando o pacote
library(fdth)

#informando dados
alturas<-c(1.5,1.53,1.68,1.51,1.63,1.65,1.54,1.55,1.65,1.56,1.57,1.5,1.6,
           1.48,1.61,1.52,1.63,1.47,1.52,1.5,1.52,1.46,1.45,1.66,1.65,
           1.59,1.51,1.58,1.62,1.60)

#Criando a tabela
tab<-fdt(alturas)

#definindo in?cio, fim e amplitude dos intervalos
tab<-fdt(alturas,start=1.45,end=1.69,h=0.04)

tab

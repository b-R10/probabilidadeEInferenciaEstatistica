#dados de entrada
x<-c(20,21,21,21,22,22,22,22,23,23,23,23,23,23,23,24,24,
     24,24,24,24,24,24,25,25,25,25,25,25,26,26,26,28)
#criando tabela
tabela<-table(x)

#Obtendo frequ?ncias relativas
freq_rel<-matrix(c(100*table(x)/sum(table(x))))

#Obtendo frequencia simples acumulada
freq_simpl_acum<-matrix(c(cumsum(tabela)))

#Obtendo frequ?ncias relativas acumuladas
freq_relat_acum<-matrix(c(100*cumsum(tabela/sum(tabela))))

#tabela com todas as frequ?ncias
tabela<-data.frame(tabela,freq_rel,freq_simpl_acum, freq_relat_acum)

tabela
library(readxl)
library(dplyr)

planilha <- read_excel("./dados/exercicio8.xls")

matriz <- data.matrix(planilha)
dados <- as.vector(matriz)
dados

png(filename = "./graficos/exercicio8.png", width = 800, height = 600)
hist(dados, main="Exercício 8", xlab="Alturas", ylab="Frequência")
dev.off()

tabela <- data.frame(t(table(dados)))[,-1]
tabela$dados <- as.numeric(levels(tabela$dados))
tabela <- tabela %>% 
  mutate(Fr = 100*Freq/sum(Freq),
         Fac = cumsum(Freq),
         Xi.Fi = dados*Freq)
tabela

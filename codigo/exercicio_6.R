library(qcc)
library(readxl)

planilha <- read_excel("./dados/exercicio6.xls")

pessoas <- planilha$'Nº pessoas'
names(pessoas) <- planilha$'Qualidade'

png(filename = "./graficos/exercicio6.png", width = 800, height = 600)
graficoPareto <- pareto.chart(pessoas, main="Exercício 6", ylab="Frequência")
dev.off()

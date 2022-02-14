library(readxl)

planilha <- read_excel("./dados/exercicio7.xls")

areas <- planilha$'Áreas'
atendimento <- planilha$'Atendimento'

png(filename = "./graficos/exercicio7.png", width = 800, height = 600)
barplot(atendimento, main="Exercício 7", xlab="Áreas", ylab="Atendimentos", names.arg = areas, ylim=c(0, 400), cex.names = 0.8, xaxs = "i")
dev.off()

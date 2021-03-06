library(readxl)

planilha <- read_excel("./dados/exercicio5.xls")

marcas <- planilha$'Marcas'
nPessoas <- planilha$'Nº pessoas'

png(filename = "./graficos/exercicio5.png", width = 800, height = 600)
barplot(nPessoas, main="Exercício 5", xlab="Marcas", ylab="Pessoas", names.arg = marcas, ylim=c(0, 50), cex.names = 0.8, xaxs = "i")
dev.off()

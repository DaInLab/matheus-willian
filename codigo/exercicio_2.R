library(readxl)
planilha <- read_excel("./dados/exercicio2.xls")

media <- mean(planilha$Casas)

tabelaFrequencia <- as.data.frame(table(planilha))
print(paste("Tabela de frequência: ", tabelaFrequencia))

calculaModa <- function(value) {
  uniqv <- unique(value)
  uniqv[which.max(tabulate(match(value, uniqv)))]
}

media        <- mean(planilha$'Casas')
mediana      <- median(planilha$'Casas')
variancia    <- var(planilha$'Casas')
desvioPadrao <- sd(planilha$'Casas')
moda         <- calculaModa(planilha$'Casas')

nomesDosCalculos <- c("Media", "Mediana", "Moda", "Variancia", "D.Padrao")
medidasPosicaoDispercao <-c(media, mediana, moda, variancia, desvioPadrao)

png(filename = "./graficos/exercicio2.png", width = 800, height = 600)
barplot(medidasPosicaoDispercao, main="Exercício 2", xlab="Valores", ylab="Casas", names.arg = nomesDosCalculos, ylim=c(0, 100), cex.names = 0.8, xaxs = "i")
dev.off()

library("writexl")

# com uma 'string' na lista, não é possível gerar o gráfico
# é necessário remover e adicionar um número para que o gráfico seja gerado
numeroFilhos <- c(0, 1, 2, 3, 5, 5, "Mais de 5")
familias <- c(17, 20, 28, 19, 7, 4, 5)

tabela <- data.frame("Numero de filhos" = numeroFilhos, "Famílias" = familias)
tabela
View(tabela)

write_xlsx(tabela,"./graficos/exercicio3.xlsx")

calculaModa <- function(numeroFilhos) {
  uniqv <- unique(numeroFilhos)
  uniqv[which.max(tabulate(match(numeroFilhos, uniqv)))]
}

mediana <- median(numeroFilhos)
moda    <- calculaModa(numeroFilhos)

print(paste("Moda: ", moda))
print(paste("Mediana: ", mediana))

nomesDosCalculos <- c("Mediana", "Moda")
calculos <- c(mediana, moda)

png(filename = "./graficos/exercicio3.png", width = 800, height = 600)
barplot(calculos, main="Exercício 3", xlab="Cálculos", ylab="Número de filhos", names.arg = nomesDosCalculos, ylim=c(0, 6), cex.names = 0.8, xaxs = "i")
dev.off()

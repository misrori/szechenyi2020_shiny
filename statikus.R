library(plotly)
library(data.table)
adat <- fread('szechenyi2020_adatok.csv', stringsAsFactors = F)
adat <- adat[,c(1:8, 15, 9:14), with=F]


varos_plot_data <- adat[, list('osszeg'= round(as.numeric(sum(osszeg)),0),'Number'=.N), by=Kisterseg]
setorder(varos_plot_data, -osszeg)

p <- plot_ly(varos_plot_data, x =~Kisterseg, y = ~osszeg, type = 'bar')
p <- layout(p, xaxis = list(categoryarray = ~osszeg, categoryorder = "array"))
p

str(adat)

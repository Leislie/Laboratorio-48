# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 48- Histograma con ggplot2

# Instalar paqueterias
install.packages("gapminder")
install.packages("ggplot2")

# Llamar la librerias
library(gapminder)
library(ggplot2)

# Cargar los datos al entorno
data("gapminder")

# Filtrado por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007',]

# Crear un histograma en ggplot2
ggplot(data = gapminder2007,
       mapping = aes(x= lifeExp))+
  geom_histogram()

# Hacer un histograma en ggplot2 con 9 intervalos (bins)
ggplot(data = gapminder2007,
       mapping = aes(x= lifeExp))+
  geom_histogram(bins = 9)

# Colorear por continente el histograma anterior
ggplot(data = gapminder2007,
       mapping = aes(x= lifeExp,
                     fill = factor(continent)))+
  geom_histogram(bins = 9)
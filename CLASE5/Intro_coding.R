############################################################
# Clase 5 – Introducción a R
# Script de apoyo para el live coding
# Autora: Evelin González F.
############################################################

############################
# 1. VARIABLES EN R
############################

# Creamos variables usando el operador <-
# Una variable es un nombre que guarda un valor en memoria.

x <- 5
gene <- "BRCA1"
af <- 0.02

# Verificamos el tipo de dato con class()
class(x)      # numeric
class(gene)   # character
class(af)     # numeric


############################
# 2. VECTORES EN R
############################

# Un vector es una colección de valores del mismo tipo.
# Se crea usando la función c()

v <- c(1, 2, 3, 4)

# Operaciones básicas
mean(v)       # promedio
length(v)     # número de elementos

# Vector de texto
genes <- c("BRCA1", "TP53", "BRCA2")
genes


############################
# 3. VALORES NA
############################

# NA representa datos faltantes (missing values)

mean(c(1, 2, NA))                # devuelve NA
mean(c(1, 2, NA), na.rm = TRUE)  # ignoramos los NA


############################
# 4. DATA FRAME
############################

# Un data frame es una tabla de datos:
# filas = observaciones/muestras
# columnas = variables

df <- data.frame(
  sample = c("S1", "S2", "S3"),
  gene   = c("BRCA1", "TP53", "BRCA2"),
  AF     = c(0.10, 0.50, 0.02)
)

# Mostrar tabla
df

# Abrir en visor (opcional en RStudio)
View(df)


############################
# 5. ACCEDER A LOS DATOS
############################

# Acceder a una columna
df$gene

# Primera fila
df[1, ]

# Seleccionar columna específica
df[, "AF"]

# Filtrar filas con condición
df[df$AF > 0.1, ]


############################
# 6. GRÁFICOS CON GGPLOT2
############################

# Cargar librería (instalar previamente si es necesario)
# install.packages("ggplot2")
library(ggplot2)

# Gráfico de barras
ggplot(df, aes(x = sample, y = AF)) +
  geom_col()

# Histograma
ggplot(df, aes(x = AF)) +
  geom_histogram()

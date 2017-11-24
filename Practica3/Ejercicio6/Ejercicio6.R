# Nombre: Alex Raul Huamani Inga 20121383b
#respuesta pregunta 6

#pregunta 6
#El conjunto de datos de iris contine las medidas de las longituds....

# * considera el objero iris ¿como esta estructurado? ¿Cuantas lineas contiene? ¿cuantas columnas contiene?
iris
nrow(iris) #nos muestra el numero de  filas de iris
ncol(iris) #nos muestra el numero de columnas de iris

# * Para tener una vision general del conjunto de valores, utiliza la fucion summary() del conjunto de datos. ¿que informacion sobre el conjunto de datos proporciona?
summary(iris) #nos proporciona informacion sobre la media, los quartiles, max, min un resumen de cada columna detalladamente.

# * Para la variable Sepal.Length verificar los resultados dados, usando las funciones min(), max(). mena(), median(), quantile().
min(iris$Sepal.Length)
max(iris$Sepal.Length)
quantile(iris$Sepal.Length)
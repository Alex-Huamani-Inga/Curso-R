# Nombre: Alex Raul Huamani Inga 20121383b
#respuesta pregunta 2

#pregunta 2
#a) Fijar cada uno de los siguientes errores y corregirlos
mtcars[-1:4,] #(INCORRECTO) , porque no puede solomente recibir numeros no negativos como parametros
mtcars[1:4,] #(CORRECTO)De esta forma se corrige el error


mtcars[mtcars$cyl <=5] #(INCORRECTO) El error es que toma todo como un elemento al no tener una coma para indicar los demas parametros, asumiendo que todo es un parametro

mtcars[mtcars$cyl <= 5, ] #(CORRECTO) imprime todos los elementos del dataframe donde la columna de conmbre cyl es menor que 5

mtcars[mtcars$cyl == 4 | 6, ] #(INCORRECTO) el error esta en que mostrara todos los valores, ya que esta comparando primero (4 | 6) lo cual siempre es verdadero es por ello que muestra todos los datos de la columna "cyl"

mtcars[mtcars$cyl ==4 | mtcars$cyl ==6, ] #(CORRECTO) por criterio comun desea mostrar los elementos de la columna cyl en los cuales los valores son iguales a 4 o a 6

#B) por qué x= 1:5 , x[NA] produce 5 valores NA?
#al intentar indexar las los elementos del vector mediante x[NA], utiliza el recycling, ya que son valores Not Available, y mostrara tantos NA como la longitud del vector


#c) por qué mtcars[1:20] retorna un error. ¿como difiere del similar mtcars[1:20, ]? 
#difiere en el numero de parametros ingresados, ademas mtcars[1:n] siempre y cuando n sea menor o igual que el numero de columnas mostrara las n columnas del data frame como por ejemplo
mtcars[1:5] #pero cuando el numero de columnas sea menor encontrara un error debido a que no habran columnas definidas como es el caso de  mtcars[1:20], ahora al poner la coma para recibir un parametro mas lo que imprime es el numero de filas del data.frame

#D)que hace df [is.na(df)] <- 0? ¿como funciona?
#como class(df) es una funcion, is.na(df) no funciona o no aplica debido a que no es una lista o un vector de tipo 'closure
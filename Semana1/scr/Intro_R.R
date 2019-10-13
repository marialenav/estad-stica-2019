SEMANA 1. "Práctica 1 - Introducción al lenguaje de programacíon en R"
AUTOR. Ma Alejandra Navarro

packageDescription(pkg = 'base',fields = 'Description')
x = 2
y <- 3
4 -> z

####**Ejer:** Reasigne 5 a la letra *z*, usando el operador *<-*, ahora, pregunte ¿qué es *z*?

z <- 5
z

#
z <- 3 + rnorm(1)

####**Ejer:** Revisemos qué es rnorm(1). Empecemos buscando la función en help o ?rnorm

help(rnorm)
?rnorm

# Crear un vector en secuencia de 1 a 10
x <- 1:10
# Ver el vector
x
# Sumar 1 a cada número
x + 1
  
####**Ejer:** multiplique *x* por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado. 
  #|Esto se escribe igual que en una calculadora manual.
  
  (((x*2)+1)/1.5)^2

####clases de objetos
  
  animales <- c('perro','gato','fara')
  animales
  
  frases <- 'El gato se comió el fara'
  frases
  
  numeros <- rep(x = 1:3,3)/1.5
  nuemeros
  
  enteros <- seq(from = 1,to = 10,by = 2)
  enteros
  
  complejos <- c(2i,5i, 3i)
  complejos
  
  logicos <- c(T,F,TRUE,FALSE)
  logicos
  
####**Ejer:** tome cualquier objeto anterior y preguntele la clase
  class(numeros)
  class(complejos)

  # Crear un vector con problemas de clases
  prueba <- c(1, "perro", FALSE, "gato", 1.5)
  # Ver el vector
  prueba
  
####**Ejer:** ¿Qué clase tiene el vector?
  class(prueba)
  
  # Creemos un factor con niveles
  grupo_altura <- factor(c("mediano", "pequeño", "grande", "muy grande"),
                         levels=c("pequeño", "mediano", "grande", "muy grande"))
  
  # Veamos el factor
  grupo_altura

#### **Ejer:** Hasta el momento hemnos generado varios vectores/objetos/variables, 
#podemos listarlas usando la función ls() o ls.str(), la cual nos permite, no solo ver las variables,
#sino el tipo de cada una.
  ls()
  ls.str()

  ### Matrices, DataFrames, Listas
  
  
  #### Matrices
  vector1<- seq(1:12)
  
  vector1
  
  matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
  matrix1
  
  # El objeto número 6
  vector1<- seq(1:12)
  
  vector1[6]
  
  vector1
  
  # el objeto de la fila 2, columna 3
  matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
  
  matrix1[2,3]
  
  matrix1
  
  #### Arreglos  
  # el objeto de la fila 2, columna 3
  matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
  
  matrix1[2,3]
  
  matrix1
  
  # el objeto de la fila 2, columna 3
  
  arreglo<- array(data = 1:12,dim = c(3,4,3))
  
  arreglo[2,4,3]
  
  arreglo
  
  vector1<-rep(1:4,3)
  vector2<- seq(2,24,2)
  array(data = c(vector1,vector2),dim = c(3,4,2))
  
####**Ejer:** Cree un una secuencia que repita los números de 1 a 4, 3 veces y 
#asignela a un objeto llamado vector1.  
#Ahora, cree una secuencia de números pares del 2 al 24
#y asignela a un objeto llamado vector2. Genere un arreglo
#con ambos vectores y busque la columna 2, fila 1 de la segunda matriz y para la primera.
  
  vector1 <- rep(1:4, 3)
  vector1
  
  vector2 <- seq(2, 24, 2)
  vector2
  
  arreglo1 <-  array(data = c(vector1, vector2), dim = c(3, 4, 2))
#fila 1, columna 2, matriz 2
   arreglo1[1,2,2]
#fila 1, columna 2, matriz 1
   arreglo1[1,2,1]

   
   vector1<-rep(1:4,3)
   vector1
   vector2<- seq(2,24,2)
   vector2
   array<-array(data = c(vector1,vector2),dim = c(3,4,2))
   array
   
   #### Data.Frames
   
# Cargando un dataframe interno
   
   data(iris)
   
   iris
   
   class(iris)
   
# Longitud del Sepalo
   
   iris$Sepal.Length
   
# Longitud del Sepalo del individuo 36
   
   iris$Sepal.Length[36]
   
   iris[36,1]

####**Ejer:**  tome la primera columna  y la segunda, concatenelas con c() ¿Qué encuentra?
#Ahora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto llamado minuevatabla.
#Haga lo mismo, con las filas del 1:5 y del 10:30, use primero c() y luego rbind() ¿Qué encuentra? 
   
   c(iris[ ,1:2 ])
   minuevatabla <- cbind(iris[ ,1:2 ])
   minuevatabla
   
   c(iris[1:5, ], iris[10:30, ])
   rbind(iris[1:5, ], iris[10:30, ])
   
####Busque el archivo suministrado por el profesor, carguelo a R y revise qué contien. 
#Extraiga las 5 primeras columnas con las 10 primeras filas, 
#escriba esa nueva matriz como csv en su computador.
   
   
   setwd("C:/Users/USER/OneDrive/Documentos/NUEVO/libros biologia/ESTADÍSTICA/LABORATORIO/TRABAJOS EN CLASE/Semana 1")  
   
#leer archivos   
   datos <- read.csv("Matrix_Multivariate_Mega.csv", header = FALSE, sep = ";")
#extraer las 5 primeras columnas con las 10 primeras filas
   datosmatriz <- datos[1:10, 1:5]
   View(datosmatriz) 
#archivo final
write.csv(x = datosmatriz, file = 'Minimatriz.csv')

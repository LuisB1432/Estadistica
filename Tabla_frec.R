#______Tablas de frecuencia_____
#utilizamosla matriz iris 

#____________________________________
# Exploracion de matriz 
#___________________________________
#1.-Explortacion de matriz 
data(iris)
#2 Vamos a la exploracion de la matriz 
dim(iris)
#Tenemos 150 individuos y5 variables 

#3 Nombre de las columnas
colnames(iris)
#Exploracion de especies
iris$Species
#4Tipo de variables 
str(iris)
#5 En busca de valores perdidos
anyNA(iris)
#6 Generacion de tablas no agrupadas

#Convertir la matriz de dato en un data fame,
# Se agrupan los valores para la variable Petal.Length
# y se calcula la frecuencia obsoluta 
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))
#2.- visualizacion de la tabla de contigencia de
#la variable Petal. Length(PL) y su respectiva frecuencia obsoluta 
tabla_PL

# Vamos a crear la tabla completa
tabla1<-transform(tabla_PL,
          FreqAC=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
#Tablas agrupadas

#Se debe tener previamente el calculo de la amplitud y rango

#1 Agrupación de las variables en clases(8clases)
#8 renglones 
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length,breaks=8))))
# Construccion de tablas completas 
tabla2<-transform(tabla_clases,
                  FreqAC=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))

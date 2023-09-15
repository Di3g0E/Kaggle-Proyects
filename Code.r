#Titanic - Machine Learning from Disaster

#cargamos la base de datos en R
library(readr)
train = read.csv("train.csv")
View(train)

#visualizamos el resumen de los datos para saber lo que nos interesa y poder hacer una limpieza de los datos
str(train)
summary(train)
summary(is.na(train))


################################################################################
#train2 = train[!is.na(train$age),] #Elimina todas las filas que contengan NA en la columna "Age"
################################################################################


#Eliminamos las columnas "PassengerId" - Irrelevante, "Name" - Irrelevante, "Ticket" - Irrelevante, "Cabin" - Falta de datos 
elimCol = c("PassengerId", "Name", "Ticket", "Cabin")
train_WCol = train[,!names(train) %in% elimCol]
head(train_WCol)

#Buscamos valores NA en la base de datos actualizada
summary(is.na(train_WCol))

#Eliminamos las filas que tengan valores nulos que nos puedan interferir en el estudio
train_Clear = na.omit(train_WCol)

#Una vez limpios los datos realizamos la estimación que mejor se adapte al estudio, en este caso realizaremos un diagrama de arbol:
install.packages("rpart")
library(rpart)

Modelo_Arbol = rpart(train_Clear$Survived ~ train_Clear$Pclass + train_Clear$Sex + train_Clear$Age + train_Clear$SibSp + train_Clear$Parch + train_Clear$Fare + train_Clear$Embarked, data = train_Clear)

# Visualizar el árbol de decisión
plot(Modelo_Arbol)
text(Modelo_Arbol)

# Kaggle-Proyects
On these repository I will push up the diferents kaggle proyects I make

## Steps to conduct a data study
> 1. Visualizar los datos
    > Tamaño de la base de datos y tipos de variables 
         > R:
            - head("`base de datos`")/tail("`base de datos`"): Muestra los datos de la cabeza o cola de la base de datos \
            - str("`base de datos`"): Muestra un breve resumen de los datos \
            - summary("`base de dastos`") / summary(is.na("`base de datos`")): Muestra un resumen más extendido de los datos / muestra los datos NA que tiene cada columna \
    
    > Limpiar los datos irrelevantes y análisis exploratorio en busca de valores atípicos
        > R:
            - `elimCol` = c("baseDeDatos**$**NombreColumna/s")                      % Crea una lista (`elimCol`) con las columnas a eliminar
            - `train_WCol` = "baseDeDatos"[,!names(baseDeDatos) %in% `elimCol`]     % Elimina las columnas de `elimCol` y guarda los cambios en una nueva base de datos (`train_Wcol`)
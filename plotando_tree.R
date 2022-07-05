library(rpart)
library(rpart.plot)
library(caret)
library(dplyr)

df = read.csv('dataframe_modificado.csv')

df$X = NULL

str(df)

df = mutate_at(df,c('Response','Education'),as.factor)

modelo = rpart(Response~.,df)

rpart.plot(modelo,type=1)

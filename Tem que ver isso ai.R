################################
# Curiosidades Eleitorais 2016 #
# Rodolpho Bernabel            #
# 2016-10-06                   #
################################

#limpa a área
rm(list=ls())

#lê o arquivo (substitua o caminho para o seu diretório)
despesas_candidatos_2016_brasil <- read.csv("C:/Users/Rodolpho/Downloads/despesas_candidatos_2016_brasil.txt", sep=";")

#cria uma cópia dos dados
df <- despesas_candidatos_2016_brasil

#data munging
attach(df)

#converte em numérico o valor da despesa
Valor.despesa.numeric <- as.numeric(gsub(",", ".", Valor.despesa))

#checa os resultados
head(Valor.despesa.numeric)
head(Valor.despesa)
summary(Valor.despesa.numeric)

#cola o novo vetor na base
df <- cbind(df,Valor.despesa.numeric)

#remove o vetor auxiliar
rm(Valor.despesa.numeric)

attach(df)

#Eliane Galdino
caso.1 <- df[which(Valor.despesa.numeric >= 7675000.8),]

caso.1

#Maurin Ribeiro
caso.2 <- df[which(Valor.despesa.numeric == 2175000),]

caso.2

#Joel Tomazi
caso.3 <- df[which(Valor.despesa.numeric == 4400000),]

caso.3

#Carlos Duarte
caso.4 <- df[which(Valor.despesa.numeric == 1200000.41),]

caso.4

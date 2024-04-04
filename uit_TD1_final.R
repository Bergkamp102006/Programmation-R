# Objets
a = 10
b= 5

resultat = a*b
print(resultat)

A= 7.5
B= 10.1

resultat1 = A+B
print(resultat1)

# supprimer les objets avec rm()
rm(list=ls())

# création d'un vecteur
vecteur = c(1,2,3,4,5)
vecteur[3]
class(vecteur)

v1 = seq(1,5,by=1)
v2 = v1 + 3
v3 = seq(1,6,by=1)
v4 = v3**2
v5 = v4/2

jour_sem = c("lundi","mardi","mercredi","jeudi",
             "vendredi","samedi","dimanche")
jour_sem[c(2,7)]

boole= c(TRUE,FALSE)
class(boole)

décimal = c(1.2,0.5,7.6)
class(décimal)

mois = c("Janvier","Février","Mars","Avril","Mai","Juin",
         "Juillet","Août","Septembre","Octobre",
         "Novembre","Décembre")
class(mois)
mois[c(1:3)]

négatif = c(-1,-2,-3)
class(négatif)

fruits = c("pomme","ananas","orange")
class(fruits)
fruits[-c(1,2)]

nombre = c(1,16,NA, 33)
class(nombre)

# séquence de nombre

nombre = seq(1,10,by = 1)
length(nombre)

nombre_pair = seq(2,20,by = 2)
length(nombre_pair)

nbre_négatif = seq(0,-5)
length(nbre_négatif)

nbre_en5 = seq(5,50,by = 5)
length(nbre_en5)

nbre = seq(10,1)
length(nbre)

nbre = seq(0,1,by= 0.1)
length(nbre)

nbre_seq = seq(5,-5,by = -1)
length(nbre_seq)

nbre_impair = seq(1,10,by = 2)
length(nbre_impair)

# Répétition des valeurs
valeur = rep(3,times = 3)

nbre_rep = rep(c("A","B","C"),times=3)
print(nbre_rep)

nbre_rep = rep(seq(1,3),times=3)

boole_rep = rep(c(TRUE,FALSE),times= 4)

rm(list=ls())

# les fonctions statistiques 
# loi uniforme, normale

loi_unif = runif(5,min =0, max= 1)
loi_un = runif (10,min=-5,max= 5)

echantillon = runif(100,min=10,max=20)

nbre_aléatoire = runif(15,min= 50,max= 100)

échantillon_norm= rnorm(20,mean = -2,sd =3)
mean(échantillon_norm)
sd(échantillon_norm)
hist(échantillon_norm)

échantillon_norm = rnorm(2000,mean = -2,sd = 3)
mean(échantillon_norm)
sd(échantillon_norm)
hist(échantillon_norm)

échantillon_norm = rnorm(2000,mean= 0,sd=1)
mean(échantillon_norm)
sd(échantillon_norm)
hist(échantillon_norm)

quantiles = quantile(échantillon_norm,probs = c(0.25,0.5,0.75))
boxplot(quantiles)

déciles = quantile(échantillon_norm, probs = seq(0,1,0.1))
boxplot(déciles)

centiles = quantile(échantillon_norm,probs = c(0.1,1,0.01))
boxplot(centiles)

# Fonctions sum et round

echantillon = rnorm(3000,mean=2400,sd=300)
moyenne = mean(echantillon)
ecart_type= sd(echantillon)

echantillon_ar = round(echantillon,2)

masse_salariale = sum(echantillon_ar)
print(paste("Masse salariale :",masse_salariale,"€"))


salaire_median = median(echantillon_ar)

quantile(echantillon, probs = 0.2)

# les fonctions sample,table,prop table, unique, sort

lancer_de_dé = sample(seq(1:6),1)

simulation = sample(seq(1:6),12,replace = TRUE)

unique(simulation)

# Compter le nombre d'apparition de chaque face 
#avec la fonction table()

table(simulation)

prop.table(table(simulation))

simulation <- sample(x = c(1,2,3,4,5,6), size = 100000, replace = TRUE)
frequence <- prop.table( table(simulation) )
sort(frequence, decreasing = TRUE)

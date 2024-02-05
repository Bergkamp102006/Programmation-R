# Exo 1
a<-10 # Affecter la valeur 10 à l'objet a

b<-5 # Affecter la valeur 5 à l'objet b

resultat<- a*b # Multiplication des deux objets a et b
print(resultat) # afficher l'objet resultat

A<-7.2 # Affecter la valeur 7.2 à l'objet A

B<-10.1 # Affecter la valeur 10.1 à l'objet B

#Nous remarquons que les objets a,A et b,B sont différents

resultat<- A+B # Somme des objets A et B
print(resultat) # Le résultat obtenu ici est différent du résultat précédent

Exo 2
rm(a,b,A,B)

1.1
vect_num<- c(1,2,3,4,5)
class(vect_num)
vect_num[3]

v1 <- c(1,2,3,4,5)
v2 <- 3 + v1

v3 <- c(1,2,3,4,5,6)
v4 <- v3**2

v5 <- v4/2
jour_sem <- c("lundi", "mardi","mercredi",
              "jeudi","vendredi","samedi","dimanche")
jour_sem[c(2,7)]

vecteur <- c(FALSE,TRUE)
class(vecteur)

vecteur <- c(9.3,6.9,0.1,1.2,4.6)
class(vecteur)
vecteur[-3]

mois_anee <- c("janvier","février","mars","avril","mai",
               "juin","juillet","août","septembre","octobre",
               "novembre","décembre")
class(mois_anee)
mois_anee[1:3]

vecteur <- c("pomme","ananas","citron","banane")
class(vecteur)
vecteur[-c(1,2)]

vecteur <- c(1, 2, NA, 4, 5)
class(vecteur)

# Les fonctions seq(), length()

vecteur <- seq(1,10,by=1)
length(vecteur)

vecteur<- seq(2,20,by=2)
length(vecteur)

vecteur <- seq(0,-5)
length(vecteur)

vecteur <- seq(5,50,by=5)
length(vecteur)

vecteur <- seq(10,1,by=-1)
length(vecteur)

vecteur <- seq(0,1,by=0.1)
length(vecteur)

vecteur <- seq(5,-5)
length(vecteur)

vecteur <- seq(1,10,by=2)
length(vecteur)

# les fonctions c(), rep()

vecteur <- c(1,2,3,4,5)
vecteur <- rep(3, times = 5)


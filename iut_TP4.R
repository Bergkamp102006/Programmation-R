# TP4
# Importer le jeu de données 

df = read.csv("C:/Users/randh/OneDrive - univ-lyon2.fr/Programmation R/dataset/velov.csv",
              header = TRUE, sep = ";", dec = ",")

summary(df)

df$status = as.factor(df$status)
df$CodePostal = as.factor(df$CodePostal)

df$bornes = ifelse(df$capacity != (df$stands+df$bikes), "OK","KO")
table(df$bornes)


# Construire un histogramme de la distribution des capacity
hist(df$capacity, main = "Distribution de la capacité des stations")

#Construire le même graphique mais avec 6 classes
hist(df$capacity, breaks = 6, main = "Distribution de la capacité des stations")

# Construire le même graphique mais en rouge
hist(df$capacity, breaks = 6, 
     main = "Distribution de la capacité des stations",
     col = "red")
# Renommer l'axe des abscisses par Capacity
hist(df$capacity, breaks = 6, 
     main = "Distribution de la capacité des stations",
     col = "red", xlab = "Capacity")

abline(h= 100, lty = 2, col = "blue")

# Construire le même graphique mais avec la densité plutôt que les effectifs
hist(df$capacity, main = "Distribution de la capacité des stations",
     col = "red", xlab = "Capacity", probability = TRUE )

# Ajouter la courbe densité de cette distribution à l'aide des fonctions lines()
lines(density(df$capacity), lty = 2, lwd = 4, 
      col = "blue")

# modifier les bornes de l'axe des ordonnées de l'histogramme avec l'argument ylim
hist(df$capacity, main = "Distribution de la capacité des stations",
     col = "red", xlab = "Capacity", probability = TRUE,
     ylim = c(0,0.08))


lines(density(df$capacity), lty = 2, lwd = 4,
      col = "blue")

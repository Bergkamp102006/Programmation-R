# Exercice 1 

setwd(dir ="L:/BUT/SD/Promo 2023/mnkoghe/R studio/dataset" )
# une erreur a été commise lors de l'importation des données 
df <- read.csv(file = "nba2014_2015.csv", sep = ",",
               header = TRUE, dec = ".")
# Le jeu de données importé est contenu dans l'objet df et non nba
# Séparateur, des virgules et les décimales en point
# L'ordinateur prend ces lignes de code comme étant une comparaison
nrow(df)
ncol(df)
# La fonction c'est colnames
colnames(df)
srt(df)

summary(df)
#Pour attribuer une valeur a un objet "<-"
# Il est important de récrire les noms tels qu'ils sont.
df$PERIOD <- as.factor(df$PERIOD)
df$PTS_TYPE <- as.factor(df$PTS_TYPE)
df$SHOOTER = as.factor(df$SHOOTER)

# Exercice 2
# L'ortographe des variables et des fonctions est à revoir.
# levels et df$PERIOD et length et df et SHOOTER
length(levels(df$PERIOD))
length(df$PTS_TYPE)
length(df$SHOOTER)
summary(df)
# Les parenthèses à la place des crochets 
# Veiller à effacer les valeurs nulles
sd(df$SHOT_DIST)
sd(df$SHOT_CLOCK, na.rm = TRUE)
     
#combien de tirs manqués/réussis
Miss= subset(df, SHOT_RESULT == "missed")
table(df$SHOT_RESULT)
#les quartiles
quantile(df$SHOT_CLOCK, probs = c(0.25,0.50,0.75,1),na.rm = TRUE)
#les déciles
quantile(df$CLOSE_DEF_DIST, probs = seq(0,1,0.1), na.rm = TRUE)
#nombre de matches différents
# Il y avait une parenthèse en trop
liste_game <- unique(df$GAME_ID)
length(liste_game)
#nombre de joueurs différents
# la fonction c'est as.factor
df$SHOOTER <- as.factor(df$SHOOTER)
nlevels(df$SHOOTER)
#conversion de la variable SHOT_DIST en mètre pour que les européens comprennent nos chiffres
df$SHOT_DIST_METRE = df$CLOSE_DEF_DIST * 0.30
#nombre de points qu'a rapporté la tentative (0,2 ou 3)  
df$PTS_MARQUES <- ifelse(df$SHOT_RESULT == "made","yes", 0)
#On supprime la variable GAME_RESULT car elle n'est pas utile
df$GAME_RESULT <- NULL
       
#création d'un objet sans la première colonne GAME_ID
df2 <- df[ , -c(1)]

#Exercice 3

#Les 100 tirs réussis ou manqués les plus loin
rang <- order(df$SHOT_DIST, decreasing = FALSE)
df3 <- df[rang,]
df3 <- (df[ 1 : 100, ])

#Les 100 tirs réussis les plus loin
df4 = subset(df, SHOT_RESULT = made)
df4 <- df[ 1 : 100 ; ]

#Combien de tirs à 3 points a réussi Kobe Bryant ?
df_kobe = subset(df,SHOT_RESULT == "made" &
                   PTS_TYPE == 3 & 
                   SHOOTER == "Kobe BRYANT")

dim(df_kobe)

#Le TOP5 des joueurs qui ont marqués le plus de points dans la saison
df_total <- aggregate(PTS_MARQUES ~ SHOOTER, data = df, FUN = sum())
df_total_tri <- df_total[-order(df_total$PTS_MARQUES)]
df_top5 <-  df_total_tri[  5  ,  ]

#Les 100 tirs réussis ou manqués les plus loin
rang <- order(df$SHOT_DIST, decreasing = FALSE)
df3 <- df[, rang]
df3 <- df[ 1 : 100 ; ]

#Les 100 tirs réussis les plus loin
df4 = subset(df3, SHOT_RESULT = made)
df4 <- df[ 1 : 100 ; ]

#Combien de tirs à 3 points a réussi Kobe Bryant ?
df_kobe = subset(df,SHOT_RESULT = made &
                   PTS_TYPE = 3 & 
                   SHOOTER = "Kobe BRYANT")

dim(df_kobe)

#Le TOP5 des joueurs qui ont marqués le plus de points dans la saison
df_total <- aggregate(PTS_MARQUES ~ SHOOTER, data = df, FUN = sum)
df_total_tri <- df_total[-order(df_total$PTS_MARQUES)]
df_top5 <-  df_total_tri[  5  ,  ]

# Exercice 4
#Des graphiques adaptés selon le type de variable

#construction de la fonction
build_graph <- function(, df$SHOT_DIST_METRE) {
  if(is.numeric(df$SHOT_DIST_METRE)) {
    print(boxplot(df$SHOT_DIST_METRE, main = "Espace interquartile de "))
  }
  else if (as.factor(une_colonne)) {
    tri <- table(une_colonne)
    print(barplot(tri, main = nom_colonne))
  }
  
  #on déroule la fonction sur chaque colonne du data frame.
  
  for (colonne in colnames(df) {
    build_graph(une_colonne = df[colonne , ] , nom_colonne = colone)
  }
}
# TD3 
#Installer le package readxl

install.packages("readxl")
# importer le package 
library("readxl")

# Exercice 1

# importer un jeu de données Excel

pokemon = read_excel("C:/Users/randh/OneDrive - univ-lyon2.fr/Programmation R/dataset/pokemon.xlsx","pokemon")

ncol(pokemon)
nrow(pokemon)
summary(pokemon)

pokemon$generation = as.factor(pokemon$generation)
pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$type = as.factor(pokemon$type)

summary(pokemon)

# Exo 2

# la foction ifelse

# Creer une variable dans un jeu de données avec une condition
pokemon$attach_group = ifelse(pokemon$attack >= median(pokemon$attack),"attack+","attack-")
View(pokemon)

pokemon$attach_group = as.factor(pokemon$attach_group)
summary(pokemon)

pokemon$water_fire = ifelse(pokemon$type == "water"| pokemon$type == "fire", "yes","valeur no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)

q3_attack  = quantile(pokemon$attack, probs = 0.75)
q3_defense = quantile(pokemon$defense, probs = 0.75)
q3_speed = quantile(pokemon$speed, probs = 0.75)
pokemon$best = ifelse(pokemon$attack > q3_attack & 
                        pokemon$defense > q3_defense &
                        pokemon$speed > q3_speed, "yes","valeur_no")
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)

requete = subset(pokemon, is.na(pokemon$weight_kg))

requete = subset(pokemon, !is.na(pokemon$weight_kg))

pokemon$weight_kgNa = ifelse(is.na(pokemon$weight_kg),median(pokemon$weight_kg,na.rm = TRUE),pokemon$weight_kg)
pokemon$height_mNa = ifelse(is.na(pokemon$height_m),median(pokemon$height_m,na.rm = TRUE),pokemon$height_m)

# la fonction cut()
pokemon$weight_group = cut(pokemon$weight_kg,
                           breaks = 3,
                           labels = c("léger","moyen","lourd"))

pokemon$height_m_group = cut(pokemon$height_m,
                             breaks = c(0,1,2,3,
                                        max(pokemon$height_m,
                                            na.rm = TRUE)))

pokemon$defense_group = cut(pokemon$defense,breaks = c(quantile(pokemon$weight_kg, na.rm = TRUE))
                           
pokemon$defense_group = cut(pokemon$defense,
                            breaks = quantile(pokemon$defense,
                            na.rm = TRUE),
                           include.lowest = TRUE)
summary(pokemon$defense_group)
      
# Exo 3
# aggregat 

aggregate(x = attack ~ type, 
          data = pokemon,
          FUN = function(x) mean(x))

aggregate(x = attack ~ generation + type, 
          data = pokemon,
          FUN = function(x) median(x))

aggregate(x= pokedex_number ~ type,
          data = pokemon,
          FUN = function(x) length(x))

aggregate(x= speed ~ generation + type,
          data = pokemon,
          FUN = function(x) c(moy =mean(x),
                              med = median(x),
                              eff = length(x)))



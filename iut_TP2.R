# TP2

df = read.csv("fao.csv",header = TRUE,dec = ",",sep = ";")

nrow(df)
summary(df)

# Exo2

mean(df$Dispo_alim,na.rm = TRUE)

sum(df$Population,na.rm = TRUE)

sd(df$Export_viande,na.rm = TRUE)
sd(df$Import_viande, na.rm = TRUE)

median(df$Prod_viande, na.rm = TRUE)

quantile(df$Dispo_alim)

quantile(df$Import_viande, probs = seq(0,1,0.1))

Exo 3
rang = order(df$Population)
resultat = head(df[ rang , ], n = 5)
View(resultat)

rang = order(df$Population, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)

trie = order(df$Prod_viande, decreasing = TRUE)
extract_1 = head(df[trie, ], 5)
View(extract_1)

trie_1 = order(df$Import_viande, decreasing = TRUE)
extract_2 = head(df[trie, ], 5)
View(extract_2)

extract_3 = subset(df,Dispo_alim >= 2300)
View(extract_3)
nrow(extract_3)

extract_4 = subset(df, Dispo_alim > 3500 & Import_viande >= 1000 )
View(extract_4)
nrow(extract_4)

extract_5 = subset(df, Nom %in% c("France","Belgique"))
View(extract_5)

df$part_export = df$Export_viande/df$Prod_viande
df$dispo_alim_pays = df$Dispo_alim*df$Population

write.table(df, "ExportTp2.csv")

dispo_alim_mondiale = sum(df$dispo_alim_pays, na.rm = TRUE)

Nre_ald = dispo_alim_mondiale/2300

# Exo 5
plot(df$Prod_viande,df$Export_viande, main = "Pays : Prod_viande / Export_viande")
# le lien entre ces variables est très faible

cor(x = df$Prod_viande,
    y = df$Export_viande)



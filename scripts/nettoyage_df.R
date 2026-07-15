# library(dplyr)
# library(tidyverse)
# 
# data <- read.csv("data/raw.csv" , sep=";")
# 
# # Avant toute analyse, les données doivent être préparées afin d'obtenir une structure adaptée aux méthodes statistiques modernes.
# # La base de données initiale est organisée sous forme large ("wide format"), avec une colonne distincte pour chaque année.
# 
# ### Transforme le table wide ==> long 
# df_long <- data |>
#  pivot_longer(
#   cols = matches("(Nombre\\.d\\.établissements|Effectifs\\.salariés)\\.\\d{4}"),
#   names_to = c(".value", "Annee"),
#   names_pattern = "(.*)\\.(\\d{4})"
#  )
# 
# # summary(df_long)
# 
# ### Nous allons renommé les variables 
# 
# df_long <- df_long %>%
#  rename(
#   departement = Département,
#   ancienne_region = Ancienne.région,
#   region = Région,
#   grand_secteur_activite = Grand.secteur.d.activité,
#   code_departement = X.Code.département,
#   code_ancienne_region = Code.ancienne.région,
#   code_region = Code.région,
#   tranche_effectif = Tranche.d.effectif.salarié.de.l.établissement,
#   annee = Annee,
#   nb_etablissements = Nombre.d.établissements,
#   effectifs_salaries = Effectifs.salariés
#  )
# 
# ### Vérifications des NA
# 
# sort(((is.na(df_long) |> colSums()) / nrow(df_long))*100 , decreasing = TRUE)
# 
# # on note que le nombre d'établissement et les effectifs salarial ont le même taux de valeurs manquantes 
# 
# df_long |>
#  summarise(
#   na_etabli = sum(is.na(nb_etablissements)),
#   na_sal = sum(is.na(effectifs_salaries))
#  )
# 
# # un question essentielle : D'ou viennent ces NA ?
# df_long |>
#  filter(is.na(nb_etablissements)) |> count(annee)
# 
# # L’analyse des valeurs manquantes par année montre une présence relativement stable de données non renseignées entre 2006 et 2025. 
# # Chaque année compte environ 400 à 560 cellules manquantes sur 4813 observations, soit près de 9 à 12 % des lignes annuelles.
# # Cette stabilité suggère que les valeurs manquantes ne proviennent pas d’un accident de collecte isolé, mais probablement
# # d’un mécanisme structurel lié à certaines combinaisons secteur-territoire-tranche d’effectif.
# 
# df_long |> 
#  filter(is.na(nb_etablissements)) |> 
#  count(tranche_effectif) |> 
#  mutate(prop = (n /sum(n))*100) |> 
#  arrange(desc(prop))
# 
# # ~ 90% des valeurs manquantes concernent principalement les grandes structures 
# # + 250 salariés cependant 39.8 % des établissements n'ont pas renseigné l'effectifs de leurs salariés 
# 
# df_long |> 
#  filter(is.na(nb_etablissements)) |> 
#  count(grand_secteur_activite) |> 
#  mutate(prop = (n /sum(n))*100) |> 
#  arrange(desc(prop))
# 
# # ~ 80% des NA concernent les  :
# # 1- Intérim                                     2809 | 29.6 %
# # 2- GS5 Autres services marchands hors intérim  1895 |20.0 % 
# # 3- GS7 Services non marchands                  1788 |18.8 %
# # 4- GS4 Hôtellerie-restauration                 1164 |12.3 %
# 
# 
# df_long |> 
#  filter(effectifs_salaries == 0)
# 
# 
# 
# VIM::aggr(df_long , numbers=TRUE , prop = FALSE , sortVar=TRUE)
# 
# 
# ### Conclusion 
# 
# # L'analyse  des données révèle la présence de 9,86 % de valeurs manquantes sur les variables relatives aux établissements et aux effectifs salariés.
# # Ces valeurs ne semblent pas distribuées aléatoirement puisqu'elles concernent majoritairement les classes d'effectifs élevées ainsi que certaines 
# # catégories sectorielles spécifiques. Cette structure suggère la présence de mécanismes de confidentialité statistique ou d'informations non renseignées
# # plutôt qu'un simple problème de collecte des données.
# 
# 
# df_clean <- df_long |>
#  filter(
#   !is.na(nb_etablissements),
#   !is.na(effectifs_salaries)
#  )
# 
# df_clean <- df_clean |> 
#  mutate(annee = as.integer(annee))
# 
# # nrow(df_clean)/nrow(df_long)
# 
# 
# write.csv(df_clean , "data/df_clean.csv")
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 



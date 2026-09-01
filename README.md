# 📊 Dynamiques de l'emploi privé en France — 2006–2025

> **Analyse des dynamiques territoriales et sectorielles de l'emploi salarié privé en France à partir des données URSSAF.**

Ce projet analyse près de **20 années d'évolution de l'emploi salarié privé français** afin de comprendre où se concentre l'emploi, quels secteurs structurent le marché du travail et comment les dynamiques diffèrent selon les territoires.

L'objectif n'est pas uniquement de produire des visualisations, mais de transformer des données publiques en **indicateurs interprétables et enseignements utiles à la décision**.

---

## 🎯 Problématique

**Comment l'emploi salarié privé français a-t-il évolué depuis 2006, et dans quelle mesure cette évolution s'explique-t-elle par la dynamique des établissements, les transformations sectorielles et les disparités territoriales ?**

L'analyse cherche notamment à répondre aux questions suivantes :

* Comment l'emploi salarié privé a-t-il évolué depuis 2006 ?
* Quels secteurs concentrent le plus d'établissements et de salariés ?
* La taille moyenne des établissements diffère-t-elle selon les secteurs ?
* Où l'emploi privé est-il géographiquement concentré ?
* Quelles régions et quels départements ont connu les plus fortes progressions ?
* Quels territoires contribuent le plus à la création nette d'emplois ?
* La croissance de l'emploi accompagne-t-elle celle du nombre d'établissements ?

---

## 💡 Executive Summary

L'analyse met en évidence cinq enseignements principaux.

### 1. Une progression de long terme de l'emploi privé

Les effectifs salariés passent d'environ **17,78 millions en 2006** à un maximum d'environ **20,03 millions en 2024**, soit une progression d'environ **12,7 %**.

Sur la même période, le nombre d'établissements employeurs progresse également, mais moins rapidement.

**→ La croissance de l'emploi ne semble donc pas reposer uniquement sur l'augmentation du nombre d'établissements.**

### 2. Les services dominent, mais le nombre d'établissements n'explique pas tout

Les **services marchands hors intérim** constituent le premier secteur en nombre d'établissements et concentrent environ **36 % des effectifs salariés** observés sur la période.

L'industrie présente toutefois un profil différent : son poids dans le nombre d'établissements est relativement limité alors que sa contribution à l'emploi est beaucoup plus importante.

**→ Nombre d'établissements et poids dans l'emploi ne sont pas nécessairement proportionnels.**

### 3. La taille des établissements constitue une différence structurelle majeure

Le ratio calculé sur la période atteint environ :

* **22,5 salariés par établissement dans l'industrie** ;
* contre seulement **6,4 dans l'hôtellerie-restauration**.

L'industrie représente également environ **32 % des observations associées aux tranches de 500 salariés ou plus**.

**→ La structure de l'emploi dépend autant de la taille des établissements que de leur nombre.**

### 4. La création d'emplois est fortement concentrée géographiquement

Entre 2006 et 2025, l'**Île-de-France** gagne environ **767 000 salariés** et représente près de **34,9 % de la création nette nationale d'emplois**.

Avec **Auvergne-Rhône-Alpes** et l'**Occitanie**, les trois régions représentent environ **61,8 % de la hausse nette de l'emploi observée sur la période**.

À l'inverse, certaines régions connaissent une stagnation ou un recul de l'emploi.

**→ La croissance nationale masque des trajectoires territoriales très différentes.**

### 5. Emploi et établissements progressent ensemble, mais pas toujours au même rythme

La comparaison des trajectoires régionales révèle plusieurs configurations.

En **Occitanie**, l'emploi progresse d'environ **21,2 %**, contre seulement **9,7 % pour le nombre d'établissements**.

En **Guadeloupe**, la dynamique est inversée : le nombre d'établissements progresse plus rapidement que l'emploi.

La **Guyane** se distingue enfin par une progression exceptionnelle et relativement parallèle des deux indicateurs.

**→ Il n'existe pas un mécanisme territorial unique de croissance de l'emploi.**

---

## 📈 Quelques visualisations

### Évolution de l'emploi salarié privé

![Évolution nationale de l'emploi](figures/NOM_FIGURE_EVOLUTION.png)

*Évolution des effectifs salariés privés en France sur la période étudiée.*

### Structure sectorielle

![Structure sectorielle](figures/NOM_FIGURE_SECTEURS.png)

*Comparaison du poids des principaux secteurs dans l'emploi et les établissements.*

### Géographie de l'emploi privé

![Carte régionale](figures/NOM_CARTE_REGION.png)

*Répartition territoriale de l'emploi salarié privé.*

### Emploi vs développement du tissu d'établissements

![Croissance régionale](figures/gg_growth_reg.png)

*La diagonale représente une croissance identique de l'emploi et du nombre d'établissements. Les régions situées au-dessus connaissent une progression de l'emploi plus rapide.*

---

## 🗂️ Données

**Source principale : URSSAF**

**Période étudiée : 2006–2025**

Les données permettent notamment d'analyser :

| Dimension        | Exemples                   |
| ---------------- | -------------------------- |
| Temps            | Année                      |
| Emploi           | Effectifs salariés         |
| Tissu économique | Nombre d'établissements    |
| Activité         | Grands secteurs d'activité |
| Taille           | Tranches d'effectifs       |
| Géographie       | Région, département        |

Les traitements ont été réalisés directement sous **R** afin de construire un workflow reproductible depuis les données jusqu'au rapport final.

---

## 🧠 Méthodologie

Le projet suit une démarche d'analyse exploratoire orientée **data storytelling** :

**Collecte / Import → Contrôle → Transformation → Agrégation → KPI → Analyse → Visualisation → Interprétation**

### Préparation des données

* contrôle des variables utilisées ;
* traitement des valeurs manquantes lorsque nécessaire ;
* agrégation par année, secteur et territoire ;
* préparation des données pour les analyses temporelles et géographiques.

### Feature engineering / KPI

Construction de plusieurs indicateurs analytiques :

* variation absolue des effectifs ;
* croissance 2006–2025 ;
* création nette d'emplois ;
* taux de croissance annuel moyen (TCAM) ;
* parts sectorielles ;
* parts régionales ;
* contribution à la création nette nationale ;
* nombre moyen de salariés par établissement ;
* évolution du nombre d'établissements.

### Analyse

Trois niveaux complémentaires ont été étudiés :

**National**
→ évolution de long terme de l'emploi et des établissements.

**Sectoriel**
→ concentration des établissements, poids dans l'emploi et différences de taille.

**Territorial**
→ régions, départements, croissance relative et contribution à la dynamique nationale.

---

## 🛠️ Stack technique

| Outil            | Utilisation                          |
| ---------------- | ------------------------------------ |
| **R**            | Analyse et traitement des données    |
| **dplyr**        | Transformation et agrégation         |
| **tidyr**        | Restructuration des données          |
| **ggplot2**      | Data visualisation                   |
| **ggrepel**      | Annotation des visualisations        |
| **sf**           | Analyse et cartographie géographique |
| **gt**           | Tableaux analytiques                 |
| **Quarto**       | Rapport analytique reproductible     |
| **Git / GitHub** | Versioning et publication            |

---

## 📂 Structure du projet

```text
dynamiques-emploi-prive-france-2006-2025/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── figures/
│   ├── gg_growth_reg.png
│   ├── ...
│
├── scripts/
│   └── analyse-emploi-prive-france.qmd
│
├── README.md
│
└── ...
```

Cette organisation sépare les **données**, les **traitements**, les **visualisations** et la **documentation** afin de faciliter la reproductibilité du projet.

---

## ⚠️ Limites

Cette analyse est principalement **descriptive et exploratoire**.

Les résultats mettent en évidence des associations entre l'évolution de l'emploi, les établissements, les secteurs et les territoires, mais ne permettent pas d'établir directement des relations causales.

Certaines analyses reposent également sur des agrégations cumulées sur la période 2006–2025. Elles doivent donc être interprétées comme des indicateurs structurels sur l'ensemble de la période et non comme une photographie d'une année donnée.

Enfin, une comparaison entre 2006 et 2025 peut masquer certaines fluctuations intermédiaires.

---

## 🚀 Pistes d'amélioration

Plusieurs extensions pourraient enrichir l'analyse :

* intégrer des variables macroéconomiques et démographiques ;
* approfondir l'analyse au niveau départemental ;
* étudier les transformations sectorielles dans chaque territoire ;
* distinguer création d'établissements et augmentation de leur taille moyenne ;
* analyser séparément les périodes précédant et suivant les principales ruptures économiques ;
* développer une analyse statistique des déterminants territoriaux de la croissance de l'emploi.

---

## 📑 Rapport complet

L'ensemble de la méthodologie, des visualisations et des interprétations est disponible dans le rapport Quarto.

### 👉 [Consulter l'analyse complète](LIEN_DU_RAPPORT)

---

## 🎯 Compétences démontrées

Ce projet met en pratique des compétences directement mobilisables en **Data Analysis / Business Intelligence** :

`Data Wrangling` · `EDA` · `KPI` · `Analyse temporelle` · `Analyse sectorielle` · `Analyse géographique` · `Data Visualisation` · `Data Storytelling` · `Reporting reproductible` · `Git`

---

## 👤 Auteur

**Ly Amadou**

Étudiant en **Mastère Intelligence Artificielle & Big Data**, à la recherche d'une **alternance en Data Analysis / Data / Business Intelligence**.

**Technologies :** R · Python · SQL · Power BI · Excel · Git

📍 Rennes, France

---

*Projet personnel réalisé à partir des données publiques de l'URSSAF.*

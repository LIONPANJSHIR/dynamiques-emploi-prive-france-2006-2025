# Dynamiques de l'emploi privé en France — 2006-2025

Analyse exploratoire et territoriale de l'évolution de l'emploi salarié privé et des établissements employeurs en France à partir des données de l'URSSAF.

## Contexte

L'emploi salarié privé constitue un indicateur essentiel de la dynamique économique française. Toutefois, son évolution nationale peut masquer d'importantes différences entre secteurs d'activité et territoires.

Ce projet analyse près de vingt années de données afin d'identifier les principales transformations de l'emploi privé français.

## Problématique

> **Comment l'emploi salarié privé français a-t-il évolué depuis 2006, et dans quelle mesure cette évolution s'explique-t-elle par la dynamique des établissements, les transformations sectorielles et les disparités territoriales ?**

L'analyse s'articule autour de quatre dimensions :

* évolution nationale de l'emploi et des établissements ;
* structure sectorielle de l'emploi ;
* disparités régionales et départementales ;
* relation entre croissance de l'emploi et évolution du nombre d'établissements.

## Données

**Source : URSSAF**

Période étudiée : **2006-2025**

Les données mobilisées permettent notamment d'analyser :

* les effectifs salariés ;
* le nombre d'établissements ;
* les secteurs d'activité ;
* les régions et départements ;
* les tranches d'effectifs.

## Stack technique

* **R**
* **tidyverse / dplyr / tidyr**
* **ggplot2**
* **ggrepel**
* **sf**
* **gt**
* **Quarto**
* **Git / GitHub**

## Méthodologie

Le projet suit une démarche d'analyse exploratoire orientée data storytelling :

**Données → préparation → agrégation → création d'indicateurs → analyse temporelle → analyse sectorielle → analyse territoriale → visualisation → interprétation**

Plusieurs indicateurs ont notamment été construits :

* croissance des effectifs salariés ;
* croissance du nombre d'établissements ;
* création nette d'emplois ;
* contribution régionale à la croissance nationale ;
* taux de croissance annuel moyen ;
* poids sectoriels ;
* salariés par établissement.

## Principaux résultats

### 1. L'emploi privé progresse sur le long terme

Les effectifs salariés passent d'environ **17,78 millions en 2006** à un maximum d'environ **20,03 millions en 2024**, soit une progression d'environ **12,7 %**.

Le nombre d'établissements progresse également, mais moins rapidement.

### 2. Les services dominent l'emploi privé

Les **services marchands hors intérim** représentent environ **36 % des effectifs salariés** observés sur la période.

La structure des établissements et celle de l'emploi restent toutefois différentes selon les secteurs.

### 3. L'industrie se caractérise par des établissements plus importants

Malgré une part relativement limitée du nombre d'établissements, l'industrie représente une part importante de l'emploi.

Le ratio calculé sur la période atteint environ **22,5 salariés par établissement** dans l'industrie contre **6,4 dans l'hôtellerie-restauration**.

### 4. La croissance de l'emploi est géographiquement concentrée

L'**Île-de-France** représente environ **34,9 % de la création nette nationale d'emplois entre 2006 et 2025**.

Avec **Auvergne-Rhône-Alpes** et l'**Occitanie**, les trois régions concentrent environ **61,8 % de la hausse nette observée**.

### 5. Emploi et établissements n'évoluent pas toujours au même rythme

La croissance du nombre d'établissements est généralement associée à celle de l'emploi, mais les trajectoires diffèrent selon les territoires.

Certaines régions connaissent une progression de l'emploi beaucoup plus rapide que celle de leur nombre d'établissements, tandis que d'autres présentent la dynamique inverse.

## Visualisations

### Évolution de l'emploi privé

![Évolution de l'emploi privé](figures/NOM_IMAGE.png)

### Répartition territoriale de l'emploi

![Répartition régionale](figures/NOM_CARTE.png)

### Dynamique régionale de l'emploi et des établissements

![Croissance régionale](figures/gg_growth_reg.png)

## Structure du projet

```text
dynamiques-emploi-prive-france-2006-2025/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── figures/
│   ├── gg_growth_reg.png
│   └── ...
│
├── scripts/
│   └── Project 1.qmd
│
├── README.md
└── ...
```

## Rapport complet

Le rapport interactif présente l'ensemble de l'analyse, des visualisations et des interprétations.

**→ Consulter le rapport complet : [lien à ajouter après publication]**

## Compétences mobilisées

Ce projet met notamment en pratique :

**Data cleaning · Data wrangling · Analyse exploratoire · Agrégation · KPI · Analyse temporelle · Analyse géographique · Data visualisation · Data storytelling · Reporting reproductible**

---

**Auteur : Ly Amadou**
Projet réalisé avec **R et Quarto** à partir des données de l'URSSAF.

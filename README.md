# code de base pour TP (et future SAE 301)

- **Nom : Gafforelli**
- **Prénom : Fabio**
- **URL maquette Figma: https://www.figma.com/file/arsOA5rZOJZecBlUhO6w00/SAE-Configurateur_Fabio_Gafforelli_2A1?node-id=0%3A1**
- **URL publique du site : http://tiktaksae301.fabiogafforelli.fr/**
- **URL du container heroku : https://fabiogafforelli-sae.herokuapp.com/**
- **URL projet Supabase : https://tfcjfqihjzxwogmltyph.supabase.co**
  - [x] Avez-vous invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase ?

# Auto-évaluation

## R313 | Dev Back (Abdallah Makhoul : [AC 2404](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612670) et [AC 2402](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612669))

Vous avez rendu à la racine du projet :

- [x] Le modèle conceptuel de données (nom : [MCD.png](/MCD.png) ou [MCD.pdf](/MCD.pdf) [^1])
- [x] Et compléter le fichier [bdd.sql](/bdd.sql) détaillant le code pour la création des tables, vues et policies créées
- [x] Avez-vous bien invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase comme développeur ?

## R312 | Intégrer ([Pierre Pracht : AC 2401](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612668))

Pour les liens :
[vers des fichiers](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes#relative-links-and-image-paths-in-readme-files) ou page d'un commit sur Github.

Noté sur 40.

- [README](/README.md) bien rempli (0-2-4pts)
  - Ne cochez que ce que vous avez fait.
- Fonctionnalités "avancées" du site (0-2-4pts)
- Intégration du site (0-2-4-6pts)
- Code et Commit (0-2-4-6pts)
- Code HTML spécifiquement sémantique et accessible (0-1-2pts)

- [ ] usage de Classes utilitaires (1pt)
  - lien vers sa définition
  - 
- [x] Composants graphiques (0-1-2pts)
  - [lien composant](/src/components/FormMontreCarree.vue)
- Technique CSS (0-1-2pts)
  - Quelles techniques (Eg. Styles graphiques (répétés) tous ajoutés par CSS et/ou
    config. Tailwind (eg. before/after avec content, background...))
    - 
  - lien 
- Mise en page CSS (0-1-2pts)
  - Quelles techniques (Grilles Flex...)
    - grid 
  - [lien grid](/src/pages/index.vue#L56)

  - [x] Mise en page fluide
- [x] Mobile First (0-1-2pts)
  - [ ] Plusieurs tailles
    - Semi responsive : header responsive et fonctionelle, quelques composants responsive mais pas l'entièreté du site
- [ ] Dark Mode (0-1-2pts)
  - [ ] Simple usage de 'dark:'
  - [ ] Mise en place avec usage de custom property pour les couleurs. Ou usage de DaisyUI AVEC thèmes perso
    - liens
- "tailwind.config.js" (0-1-2pts)
  - [x] usage basique couleurs/fonts
  - [ ] Comporte des données supplémentaires (utilisées !). Eg: "content-xxx", "bg-xxx", "grid-cols-xxx"...
    - liens
- Composants "accessibles" (0-1-2pts)
  - [x] textes "accessibles" (eg. 'sr-only')
  - [x] Contenu accessible ET Usage de composants étudié pour accessibilité (Eg. HeadlessUI)
  [lien composant headlessUI](/src/components/FormMontreCarree.vue#L101)

[^1]: Supprimez les mentions inutiles.

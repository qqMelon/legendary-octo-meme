# Docker env project

### Actions avant d'executer les commandes

1. Deplacer/copier les Dockerfiles dans le dossier `pkg` vers les dossiers des projets correspondant.
2. Renommer ces dossiers deplaces precedemment
3. Renommer les entrers des dossiers build dans le `docker-compose.yml`


## Architecture

Exemple de l'architecture des dossiers project pour le bon fonctionnement des builds.

- [NOM DU PROJET] *Dossier parent*
  - front-angular
  - front-mobile-cordova
  - back-java-spring
  - env-pkg *Ce repo*

## Execution des commandes

Toutes les executions des commandes **Docker** et/ou **Make** et/ou **Taskfile** devront se faire dans ce repository: `env-pkg`

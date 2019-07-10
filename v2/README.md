
# Docker-Jenkins-project
##  :book: description

Sample PHP Web Site Docker Jenkins

Objectif :
Faire fonctionner le site www.samplephpwebsite.com via un Docker Compose et des Dockerfile

- Créer une configuration Jenkins (scriptée en groovy/Job DSL ou Pipeline) afin de packager automatiquement l'application dans une image Docker à toutes les heures

- Créer un script de testing (avec PHPUnit, Atoum ou tout autre framework de testing PHP) dans le but de vérifier que le site fonctionne correctement en testant le retour attendu de plusieurs fonctions utilisées et développées pour le site.

- Faire 1 version par branche git (3 versions successives à faire fonctionner : v1, v2, v3), penser aux tags des images Docker (latest, version, etc...)

Eléments fournis :
- Repository Git contenant les sources du site : https://github.com/Akasam/samplephpwebsite

Rendu attendu :
Un repository git qui contiendra 3 branches, une pour chacune des versions du site dans lequel seront les sources du site fournies et non altérées et les différents fichiers de configuration nécessaires selon la liste suivante : 
- Documentation propre, claire et détaillée indiquant la marche à suivre (la plus simple possible bien sûr) pour lancer et tester le projet.
- Fichier Docker Compose
- Fichiers Dockerfile
- Fichiers de configuration des différents outils utilisés si nécessaire
- Scripts Job DSL / Pipeline
- Script shell "start.sh" contenant la liste des commandes nécessaires à la compilation et au lancement du service. Si nécessaire mettre une pause entre chaque version pour permettre de tester dans un navigateur le bon fonctionnement de la version (commande shell "read -p "Press any key to continue... " -n1 -s" pour faire une pause)

Procédure de test :
Lancement du script "start.sh" et test via un navigateur

Bonus :
- Ajout d'étapes supplémentaires dans les jobs Jenkins, comme par exemple : hook git pour le déclenchement d'une build à chaque commit, linter, code quality (sonarqube), ... (cette liste n'est pas exhaustive et vous pouvez rajouter d'autres types de tâches selon vos envies/idées)
- Documentation en MarkDown
- Intégration de Docker Swarm dans Docker Compose

##  :floppy_disk: languages
- php
#  :flags: branch
- **[master](../../tree/master)**
- **[v1](../../tree/v1)**
- **[v2](../../tree/v2)**
- **[v3](../../tree/v3)**

##  :hammer: builds
### avec Docker
lancer le script "start.sh" avec les droits docker
### avec Jenkins
Lancer un container Jenkins lier au binaires du docker.

> docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /var/run/docker.sock:/var/run/docker.sock --name jenkins jenkins/jenkins:lts

Dans le container Jenkins installer Docker client pour pouvoir realiser du Docker in Docker.

> docker exec -it -u root jenkins bash

    apt-get update && \
    apt-get -y install apt-transport-https \
         ca-certificates \
         curl \
         gnupg2 \
         software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
       $(lsb_release -cs) \
       stable" && \
    apt-get update && \
    apt-get -y install docker-ce
    chown root:jenkins /run/docker.sock # autorisations docker a jenkins
dans jenkins, créer un nouveau job sur lequelle sera present la pipeline. Dans la configuration de la pipeline preciser le lien du repo git.
# :calling: Publication
- [github](https://github.com/gamegine/Docker-Jenkins-project)
## :package: dependencies
- Docker
> - jenkins
> - nginx
> - php
	 - phpunit
# Show your support
Give a :star: star if this project helped you !
# License
[Mozilla Public License 2.0](LICENSE)

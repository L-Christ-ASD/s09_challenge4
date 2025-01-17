# s09_challenge4

![Build and Deploy GoScript](https://github.com/L-Christ-ASD/s09_challenge4/actions/workflows/cowsay-go.yml/badge.svg)
![docker push](https://github.com/L-Christ-ASD/s09_challenge4/actions/workflows/docker-push.yml/badge.svg)

## Cinquième challenge Github

En travaillant par groupe  
Créez un nouveau dépôt  
Créez un code Go qui permet d'afficher un message via une vache, vous pouvez utiliser le code ci dessous :

```
package main

import (
	"fmt"
	"log"

	cowsay "github.com/Code-Hex/Neo-cowsay/v2"
)

func main() {
	// Message à afficher avec la vache
	message := "Hello, Go World!"

	// Génère le message cowsay
	cow, err := cowsay.Say(
		message	, // Le texte que la vache dira
		cowsay.Type("default"), // Le type de vache (peut être changé, par ex. "dragon")
	)
	if err != nil {
		log.Fatalf("Erreur lors de la génération de la vache : %v", err)
	}

	// Affiche la vache
	fmt.Println(cow)
}

```

1. Ecrire un workflow Github action qui contient deux étapes :
    - build -> compile le programme Go en un exécutable
    - deploy -> déploie votre code Go sur un serveur
2. Préparer une image Docker qui va afficher une vache en utilisant le programme précédent
    - Préparer un Dockerfile avec l'exécutable dedans
    - Publiez l'image sur le Dockerhub via une workflow Github action
3. Mettre en place un système de mise à jour automatique pour avoir une nouvelle image générée chaque nuit.


## Ajoutez y :

- un déclencheur manuel qui permet de lancer le build d'une image docker (workflow_dispatch),
- ajoutez au déclencheur un input qui permet de saisir la version de l'image Docker,
- utilisez la valeur saisie pour générer votre image Docker et la push sur la registry Docker.  (comming soon, or later)



FHIR est un standard qui offre des sources permettant de stocker les informations cliniques d'un patient. Ce standard offre une certaine flexibilités qui doit être documentée dans un **Implementation Guide** généré a partir de sources FHIR _(ex. StructureDefinition, ValueSet, CodeSystem)_.

Pour chaque source du modèle, on a défini les contraintes suivantes:
- Extensions,
- Champs non renseignés (cardinalités 0...0)
- Champs avec des valeurs *(ValueSet)* spécifiques (ex. un sous-ensemble de valeurs d'un systeme renseigné dans HL7 ou bien des valeurs non renseignées dans ce dernier)

La figure suivante résume grossièrement les séquences nécessaires a la création des sources FHIR nécessaires pour générer l'_Implementation Guide_ du modèle.

![IG](https://user-images.githubusercontent.com/12585875/88959280-bc440a80-d26f-11ea-932d-2f5fde8e611e.png)


<<<<<<< HEAD
Le fichier **Profiles** permet de définir les profiles de chaque source de notre modèle avec leurs contraintes.
=======
Le fichier **Profiles** permet de définir les profiles de chaque source de notre modèle avec leurs contraintes.
>>>>>>> 22c6d4057022df34b66364095b9c79c552912154

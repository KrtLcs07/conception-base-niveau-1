# Schema Relationnel niveau-1 (gargote Rado)

## Étape 1 – La carte
[nouveau]
- plat(**id_plat**,nom,categorie,prix)

| **id_plat** | nom      | categorie | prix     |
| ----------- | -------- | --------- | -------- |
| PK          | non-null |           | non-null |
-------------------------------------------------

### Piege  :
- Pour le prix j'ai choisi INTEGER car c'est un nombre et on demandé sans centimes donc des entiers
- Poul l'identifiant j'ai choisi la colonne id_plat car c'est le seul

## Étape 2 – Les catégories
[nouveau]
- categorie(**id_categorie**,nom)

 | **id_categorie** | nom      |
 | ---------------- | -------- |
 | PK               | non-null |

[modifié]
- alteration de la table plat :
  - ajouter une colonne id_categorie Foreign key vers categorie

| **id_plat** | nom      | id categorie | prix     |
| ----------- | -------- | ------------ | -------- |
| PK          | non-null | FK categorie | non-null |
----------------------------------------------------

### Piege :
- On ajoute pas de colonne categorie VARCHAR dans la table plats pour que ça soit plus polivalent et eviter les erreurs de saisie
- exemple : 
  - on a inserer des plats du meme categorie qui ex:Plat malagasy et il y a eu une faute de frappe dans l'un deux, ces plats seront considerer comme des plats de different categorie
  - si on veux changer le nom d'une categorie, on devra modifier de nombreux ligne


 
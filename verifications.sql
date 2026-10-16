-- Active: 1792132093212@@127.0.0.1@5432@gargote_rado_db@public
\c gargote_rado_db

-- les plats du plus cher au moins cher.
SELECT * FROM plat ORDER BY prix DESC

-- nombre de plats par catégorie, y compris les catégories sans plat
SELECT c.id_categorie, c.nom,
        count(p.id_plat) as nombre_plat
FROM categorie c
    LEFT JOIN plat p ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie
ORDER BY c.id_categorie;


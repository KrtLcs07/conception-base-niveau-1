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

-- montant total de chaque commande
SELECT c.id_commande, c.date_commande, sum(cl.quantite * p.prix)
FROM commande c
JOIN commande_ligne cl on cl.id_commande = c.id_commande
JOIN plat p on p.id_plat = cl.id_plat
GROUP BY c.id_commande

-- iste des commandes avec le nom du client, en affichant « client de passage » quand il n'y en a pas.
SELECT 
    c.id_commande,
    c.date_commande,
    COALESCE(cl.nom, 'client de passage') AS nom_client
FROM 
    commande c
LEFT JOIN 
    client cl ON c.id_client = cl.id_client;

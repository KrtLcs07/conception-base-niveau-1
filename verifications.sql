-- Active: 1792132093212@@127.0.0.1@5432@gargote_rado_db
\c gargote_rado_db

-- les plats du plus cher au moins cher.
SELECT * FROM plat ORDER BY prix DESC
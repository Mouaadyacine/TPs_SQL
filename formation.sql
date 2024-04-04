1.
SELECT f.Titre, s.NomSession, s.DateDebut, s.DateFin
FROM Formation f
INNER JOIN Session s ON f.IdFormation = s.IdFormation
WHERE s.Ouvert = true;

2.
SELECT f.Titre AS Titre_formation, e.Nom AS Nom_etudiant, e.Prenom AS Prenom_etudiant
FROM Formation f
INNER JOIN Inscription i ON f.IdFormation = i.IdFormation
INNER JOIN Etudiant e ON i.IdEtudiant = e.IdEtudiant
ORDER BY f.Titre;
3.
SELECT 
    SUM(CASE WHEN ModeInscription = 'Distancielle' THEN 1 ELSE 0 END) AS Inscriptions_distancielles,
    SUM(CASE WHEN ModeInscription = 'Présentielle' THEN 1 ELSE 0 END) AS Inscriptions_présentielles
FROM Inscription
WHERE IdFormation = (SELECT IdFormation FROM Formation WHERE Titre = 'Web développement');
4.
SELECT f.Titre, COUNT(*) AS Nombre_inscriptions_distancielles
FROM Formation f
INNER JOIN Inscription i ON f.IdFormation = i.IdFormation
WHERE i.ModeInscription = 'Distancielle'
GROUP BY f.Titre
HAVING COUNT(*) >= 3
ORDER BY COUNT(*) DESC;
5.
SELECT 
    sp.Nom AS Nom_spécialité,
    f.Titre AS Titre_formation,
    f.Durée AS Durée_formation,
    f.Prix AS Prix_formation
FROM Spécialité sp
INNER JOIN Formation f ON sp.IdSpécialité = f.IdSpécialité
WHERE sp.Active = true
ORDER BY sp.Nom DESC;

6.
SELECT f.Titre, COUNT(*) AS Nombre_inscriptions_distancielles
FROM Formation f
INNER JOIN Inscription i ON f.IdFormation = i.IdFormation
WHERE i.ModeInscription = 'Distancielle'
GROUP BY f.Titre
HAVING COUNT(*) >= 3

UNION

SELECT f.Titre, COUNT(*) AS Nombre_inscriptions_présentielles
FROM Formation f
INNER JOIN Inscription i ON f.IdFormation = i.IdFormation
WHERE i.ModeInscription = 'Présentielle'
GROUP BY f.Titre
HAVING COUNT(*) >= 4;

7.
SELECT 
    YEAR(s.DateDebut) AS Année, 
    MONTH(s.DateDebut) AS Mois, 
    SUM(f.Prix) AS Total_prix_payé
FROM Formation f
INNER JOIN Session s ON f.IdFormation = s.IdFormation
GROUP BY YEAR(s.DateDebut), MONTH(s.DateDebut);
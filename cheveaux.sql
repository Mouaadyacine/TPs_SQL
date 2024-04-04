
1. Combien y a-t ’il de Chevaux Noir ?
select count(numCheval) from cheval where couleurCheval = "black"

2. Combien y a-t ’il de chevaux de la race AngloArabe?
select count(numCheval) from cheval where nomRace = "AngloArabe"

3. Donner le numéro et le nom du cheval dont le Numéro de tatouage est : T0415
select numCheval, nomCheval from cheval where numTatouage = "t0415"

4. Combien y a-t-il d’éditions du concours : « Concours Dubai »?
select * from concours where libelleConcours = "Concours Dubai"

5. Quel est le nombre total de participants dans toutes les éditions du Concours Dubai?
select sum(NbrParticipants) from concours

6. Dans quels concours /année les chevaux de l’écurie ont eu la première place?
select * from participationconcours where place = "1st Place"

7. Quels chevaux ont participé à l’édition 2018 du concours de Londres ?
select Cheval_numCheval from participationconcours where Concours_libelleConcours ="Londres" and Concours_AnneeConcours = 2018
 
8. Comment s’appelle le directeur de l’établissement ?
select nomPers from persones where fonctionPers = "Manager"

9. Combien y a-t ’il de propriétaires ?
select count(numPers) from proprietaire
selct * from proprietaire

10. Combien de chevaux le propriétaire N6 a acheté en 2020 ?
select count(numCheval) from proprietaire where numPers = "N6" and DateAchat = 2020

11. Combien il a payé pour acheter ses chevaux ?
select count(prixAchat) from proprietaire where numPers = "N6" and DateAchat = 2020


select count(numCheval) from proprietaire where numPers = "N6" and DateAchat = 2020

11. Combien il a payé pour acheter ses chevaux ?
select count(prixAchat) from proprietaire where numPers = "N6" and DateAchat = 2020

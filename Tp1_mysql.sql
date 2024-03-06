select count(*) from etudiant;

select datediff( now(),dateNaissance )/366 as age from etudiant;
 
select max(prixForm) as pluscher , min(prixForm) as moinsCher from formation;
 
select sum(formation.prixForm) as totalprix from formation ;

select count(inscription.numCinEtu) as nombreEtu , session.nomSess from inscription 
join session on session.codeSess = inscription.codeSess
group by session.nomSess ;

select distinct numCinEtu from inscription ;

select count(numCinEtu) as totalInscri, numCinEtu from inscription 
group by numCinEtu;

select count(typeCours) as totalTypeSess , codeSess from inscription 
group by codeSess;


select cheval.nomCheval , race.nomRace from cheval 
join race on race.nomRace = cheval.nomRace
where race.nomRace = "arabian"
order by race.nomRace desc;


select cheval.nomCheval , race.nomRace, race.poidsType, race.tailleType from cheval 
join race on race.nomRace = cheval.nomRace
where race.nomRace = "arabian"
order by race.nomRace desc;

select persones.nomPers , proprietaire.numCheval, cheval.nomcheval from persones 
join proprietaire on proprietaire.numPers = persones.numPers
join cheval on cheval.numCheval = proprietaire.numCheval;

select * from persones 
where numPersSup is null;

select * from concours where AnneeConcours = 2023
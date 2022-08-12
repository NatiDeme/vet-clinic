/*Queries that provide answers to the questions from all projects.*/

select * from animals
    inner join owners
    on owners.id = owner_id and owners.full_name = 'Melody Pond';

select * from animals 
    inner join species
    on species.id = species_id and species.name = 'Pokemon';

select owners.full_name, animals.name from owners
    left join animals
    on owners.id = owner_id;

select species.name, count(*) from animals
join species 
on species_id = species.id group by species.name;

SELECT owners.full_name as Owners,animals.name as Animals FROM owners
  INNER JOIN  species ON  owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon'
  INNER JOIN  animals ON owners.id = owner_id AND species.id = species_id;

SELECT owners.full_name as Owners,animals.name as Animals FROM owners
  INNER JOIN  animals ON owners.id = owner_id and owners.full_name = 'Dean Winchester' and escape_attempts = 0;

SELECT owners.full_name AS Owners,count(*) FROM owners
  JOIN  animals ON  owners.id = owner_id
  GROUP BY Owners ORDER BY count DESC LIMIT 1;
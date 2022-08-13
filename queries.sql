/*Queries that provide answers to the questions from all projects.*/

SELECT animals.name 
  FROM animals
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON vets_id = vets.id WHERE vets.name = 'William Tatcher'
  ORDER BY date_of_visit DESC LIMIT 1;


SELECT COUNT(DISTINCT animals.name)
  FROM animals
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON vets_id = vets.id WHERE vets.name = 'Stephanie Mendez';


SELECT vets.name AS vet,species.name AS specialization
  FROM vets
  JOIN  specializations ON  vets.id = vets_id 
  JOIN species ON species_id = species.id;


SELECT animals.name
  FROM animals
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON vets_id = vets.id WHERE vets.name = 'Stephanie Mendez' 
  AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';



SELECT animals.name, count(*)
  FROM animals
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON vets_id = vets.id 
  GROUP BY animals.name ORDER BY count DESC LIMIT 1;


SELECT animals.name,date_of_visit
  FROM animals
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON vets_id = vets.id WHERE vets.name = 'Maisy Smith' 
  ORDER BY date_of_visit LIMIT 1;


SELECT animals.name,date_of_birth,escape_attempts,neutered,weight_kg,species.name as specie,
      vets.name as vet_name,vets.age as vet_age,date_of_graduation ,date_of_visit
  FROM species 
  JOIN animals ON animals.species_id = species.id
  JOIN  visits ON  animals.id = animals_id 
  JOIN vets ON visits.vets_id = vets.id
  ORDER BY date_of_visit DESC LIMIT 1;

  SELECT vets.name,count(*) 
    FROM visits
    JOIN  vets ON vets.id = visits.vets_id  
    LEFT JOIN specializations ON vets.id = specializations.vets_id WHERE specializations.vets_id IS NULL
    GROUP BY vets.name;
    
  SELECT species.name AS specialization,count(*) AS number_of_visits
    FROM species
    JOIN  animals ON species.id = animals.species_id
    JOIN visits ON animals.id  = visits.animals_id
    JOIN vets ON visits.vets_id = vets.id  WHERE vets.name = 'Maisy Smith'
    GROUP BY species.name ORDER BY number_of_visits DESC LIMIT 1;
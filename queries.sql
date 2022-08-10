/*Queries that provide answers to the questions from all projects.*/

BEGIN;
 DELETE FROM animals
 WHERE date_of_birth > '2022-01-01';

SAVEPOINT first_savepoint;

UPDATE animals 
SET weight_kg = weight_kg * -1;

ROLLBACK TO first_savepoint;

UPDATE animals 
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals
WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered , SUM(escape_attempts) FROM animals
GROUP BY neutered;

SELECT MIN(weight_kg), MAX(weight_kg) FROM animals;

SELECT AVG(escape_attempts) FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';


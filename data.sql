/* Populate database with sample data. */

INSERT INTO owners(full_name, age)
	VALUES 
	('Sam Smith', 34),
	('Jennifer Orwell', 19),
	('Bob', 45),
	('Melody Pond', 77),
	('Dean Winchester', 14),
	('Jodie Whittaker', 38)
	;

INSERT INTO species(name)
	VALUES 
	('Pokemon'),
	('Digimon')
	;

UPDATE animals 
   SET species_id = 2
   WHERE name like '%mon';

UPDATE animals 
    SET species_id = 1
    WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN( 'Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN( 'Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN( 'Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN( 'Angemon', 'Boarmon');





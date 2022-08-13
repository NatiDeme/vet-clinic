/* Database schema to keep the structure of entire database. */

CREATE TABLE vets (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    age INT,
    date_of_graduation date
);


CREATE TABLE specializations (
    vets_id        INT,
    species_id     INT, 
    PRIMARY KEY(vets_id, species_id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id)
);


CREATE TABLE visits (
    animals_id    INT,
    vets_id       INT,
    date_of_visit DATE, 
    PRIMARY KEY(animals_id, vets_id, date_of_visit),
    CONSTRAINT fk_animals FOREIGN KEY(animals_id) REFERENCES animals(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);
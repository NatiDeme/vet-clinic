/* Database schema to keep the structure of entire database. */

CREATE TABLE woners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(50),
    age integer
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
);

DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    CONSTRAINT fk_species
        FOREIGN KEY(species_id)
            REFERENCES species(id)
);

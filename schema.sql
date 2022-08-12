/* Database schema to keep the structure of entire database. */

CREATE TABLE owners (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(50),
    age integer
);

CREATE TABLE species (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50)   
);


CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    owner_id INT,
    species_id INT,
    CONSTRAINT fk_species
        FOREIGN KEY(species_id)
            REFERENCES species(id),
    CONSTRAINT fk_owner
        FOREIGN KEY(owner_id)
            REFERENCES owners(id)
);

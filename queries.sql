/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM public.animals
    WHERE name like '%mon'

SELECT * FROM public.animals
    WHERE date_of_birth between '2016-01-01' and '2019-12-31'

SELECT * FROM public.animals
    WHERE neutered = true and escape_attempts < 3

SELECT date_of_birth FROM public.animals
  WHERE name = 'Agumon' OR name = 'Pikachu'

SELECT name, escape_attempts FROM public.animals
  WHERE weight_kg > 10.5

SELECT * FROM public.animals
  WHERE neutered = true

SELECT * FROM public.animals
  WHERE name != 'Gabumon'

SELECT * FROM public.animals
  WHERE weight_kg >= 10.4 and weight_kg <= 17.3

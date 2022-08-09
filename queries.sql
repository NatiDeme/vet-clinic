/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM public.animals
    WHERE name like '%mon'

SELECT * FROM public.animals
    WHERE date_of_birth between '2016-01-01' and '2019-12-30'

SELECT * FROM public.animals
    WHERE neutered = true and escape_attempts < 3

SELECT date_of_birth FROM public.animals
  WHERE name = 'Agumon' OR name = 'Pikachu'

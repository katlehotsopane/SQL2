--Try it yourself


CREATE TABLE animal_kind (
   kind varchar,
   weight numeric);

CREATE TABLE animal_species(
   habitat varchar,
   food varchar)

2. 
INSERT INTO animal_kind (kind, weight)
   VALUES ('dog', 111),
   ('lion', 232),
   ('elephant', 432);

INSERT INTO animal_species(habitat, food)
   VALUES ('domestic', 'omnivore'),
   ('safari', 'carnivore'),
   ('safari', 'herbivore');

SELECT * FROM animal_kind

SELECT * FROM animal_specie
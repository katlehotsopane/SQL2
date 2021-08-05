ALTER TABLE meat_poultry_egg_inspect ADD COLUMN meat_processing boolean;
ALTER TABLE meat_poultry_egg_inspect ADD COLUMN poultry_processing boolean;

SELECT * FROM meat_poultry_egg_inspect; 

UPDATE meat_poultry_egg_inspect
SET meat_processing = TRUE
WHERE activities ILIKE '%meat processing%';

UPDATE meat_poultry_egg_inspect
SET poultry_processing = TRUE

SELECT count(meat_processing), count(poultry_processing)
FROM meat_poultry_egg_inspect;

SELECT count(*)
FROM meat_poultry_egg_inspect
WHERE meat_processing = TRUE AND
      poultry_processing = TRUE
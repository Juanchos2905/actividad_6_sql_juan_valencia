SELECT NAME AS Nombre, population AS Poblacion,
IF(habitats_id = 2, 'Terrestre', 'Acuatico') AS Tipo
FROM animals_species
	 JOIN habitats_species_animals ON habitats_species_animals.id = animals_species.id


WHERE population BETWEEN 100 AND 5000000 OR habitats_id = 3
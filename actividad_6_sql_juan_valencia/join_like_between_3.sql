SELECT animals_species.id, animals_species.name AS Nombre, animals_species.population AS Poblacion,
moving_ways.name AS Desplazamiento

FROM animals_species
	 JOIN moving_ways ON moving_ways.id = animals_species.moving_way_id

WHERE animals_species.population BETWEEN 520000000 AND 620000000 OR animals_species.name LIKE '%gat%'
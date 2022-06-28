SELECT animals_species.name AS Nombre,
conservation_states.name AS 'Estado de reproduccion',
case animals_species.conservation_state_id
	WHEN 1 THEN 'Imposible'
	WHEN 2 THEN 'Reduccion'
	WHEN 3 THEN 'Necesario'
	WHEN 4 THEN 'Necesario'
	WHEN 5 THEN 'Posible'
	END AS 'Necesidad de reproduccion'
FROM animals_species
	 JOIN conservation_states ON animals_species.conservation_state_id = conservation_states.id
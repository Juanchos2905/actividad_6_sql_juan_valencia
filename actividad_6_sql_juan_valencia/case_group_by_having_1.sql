SELECT conservation_states.name AS Estado,
COUNT(animals_species.conservation_state_id) AS Cantidad
FROM conservation_states
	 JOIN animals_species ON animals_species.conservation_state_id = conservation_states.id
GROUP BY conservation_states.name
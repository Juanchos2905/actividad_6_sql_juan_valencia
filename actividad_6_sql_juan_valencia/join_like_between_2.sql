SELECT animals_species.id, animals_species.name AS Nombre,
conservation_states.name AS Estado,
habitats.name AS Tipo

FROM habitats_species_animals
	 JOIN animals_species ON animals_species.id = habitats_species_animals.animal_specie_id
	 JOIN habitats ON habitats.id = habitats_species_animals.habitats_id
	 JOIN conservation_states ON conservation_states.id = animals_species.conservation_state_id
	 
WHERE animals_species.name LIKE '%a'
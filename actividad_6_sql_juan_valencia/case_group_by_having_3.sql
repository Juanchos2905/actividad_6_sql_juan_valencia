SELECT type_foods.name AS 'Tipo de alimentacion', SUM(population) AS 'Suma Poblacion', AVG(population) AS 'Promedio animales'
FROM animals_species 
	 JOIN type_foods ON type_foods.id = animals_species.types_food_id
GROUP BY type_foods.name
HAVING AVG(population) > 150000000

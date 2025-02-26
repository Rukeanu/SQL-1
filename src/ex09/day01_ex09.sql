SELECT pizzeria.name
FROM pizzeria
WHERE id NOT IN (SELECT pizzeria_id FROM person_visits WHERE pizzeria_id = pizzeria.id);

SELECT pizzeria.name
FROM pizzeria
WHERE NOT EXISTS (SELECT 1 FROM person_visits WHERE pizzeria_id = pizzeria.id);
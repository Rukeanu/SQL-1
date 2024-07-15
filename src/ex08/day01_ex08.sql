SELECT person_order.order_date AS order_date, temp_p.name || ' (age:' || temp_p.age || ')' AS person_information
FROM person_order
NATURAL JOIN
(SELECT id AS person_id, name, age FROM person) AS temp_p
ORDER BY order_date, person_information;
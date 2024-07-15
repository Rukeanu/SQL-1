SELECT person_order.order_date AS action_date, person_order.person_id
FROM person_order
INTERSECT ALL
SELECT person_visits.visit_date, person_visits.person_id
FROM person_visits
ORDER BY action_date ASC, person_id DESC;
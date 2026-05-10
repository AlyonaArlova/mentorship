--1.2 Add the actors who play leading roles in your favorite movies to the actor and film_actor tables. 
INSERT INTO actor (first_name, last_name, last_update)
VALUES
('Brendan', 'Fraser', CURRENT_TIMESTAMP),
('Rachel', 'Weisz', CURRENT_TIMESTAMP),
('Elijah', 'Wood', CURRENT_TIMESTAMP),
('Ian', 'McKellen', CURRENT_TIMESTAMP),
('Daniel', 'Radcliffe', CURRENT_TIMESTAMP),
('Emma', 'Watson', CURRENT_TIMESTAMP);

INSERT INTO film_actor (actor_id, film_id, last_update )
VALUES 
((SELECT actor_id FROM actor WHERE first_name = 'Brendan' AND last_name ='Fraser'),(SELECT film_id FROM film WHERE title = 'The Mummy'), CURRENT_TIMESTAMP),
((SELECT actor_id FROM actor WHERE first_name = 'Rachel' AND last_name = 'Weisz'),(SELECT film_id FROM film WHERE title = 'The Mummy'), CURRENT_TIMESTAMP),
((SELECT actor_id FROM actor WHERE first_name = 'Elijah' AND last_name = 'Wood'),(SELECT film_id FROM film WHERE title = 'The Lord of the Rings: The Fellowship of the Ring'), CURRENT_TIMESTAMP),
((SELECT actor_id FROM actor WHERE first_name = 'Ian' AND last_name = 'McKellen'),(SELECT film_id FROM film WHERE title = 'The Lord of the Rings: The Fellowship of the Ring' ), CURRENT_TIMESTAMP),
((SELECT actor_id FROM actor WHERE first_name = 'Daniel' AND last_name = 'Radcliffe'),(SELECT film_id FROM film WHERE title = 'Harry Potter and the Sorcerer''s Stone' ), CURRENT_TIMESTAMP),
((SELECT actor_id FROM actor WHERE first_name = 'Emma' AND last_name ='Watson'),(SELECT film_id FROM film WHERE title = 'Harry Potter and the Sorcerer''s Stone' ), CURRENT_TIMESTAMP);



--1.3 Add your favorite movies to the inventory of any store using the inventory table.


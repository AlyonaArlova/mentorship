INSERT INTO film (
    title,
    description,
    release_year,
    rental_rate,
    rental_duration,
    language_id,
    length,
    replacement_cost,
    rating
)
VALUES
(   'The Mummy',
    'An adventurer accidentally awakens an ancient cursed priest while exploring a lost Egyptian city.',
    1999,
    4.99,
    7, 
    1,
    124,
    19.99,
    'PG-13'
),
(   'Harry Potter and the Sorcerer''s Stone',
    'A young boy discovers he is a wizard and begins his journey at a magical school, uncovering secrets about his past.',
    2001,
    9.99,
    14, 
    1,
    152,
    24.99,
    'PG'
),
(   'The Lord of the Rings: The Fellowship of the Ring',
    'A hobbit sets out on a dangerous journey to destroy a powerful ring and save Middle-earth.',
    2001,
    19.99,
    21, 
    1,
    178,
    29.99,
    'PG-13'
);

-- does not work? SQL Error [23505]: ERROR: duplicate key value violates unique constraint "film_pkey"
  --Detail: Key (film_id)=(3) already exists.
--if it is serial - i can skip adding film_id??

--TASK 2
--Add the actors who play leading roles in your favorite movies to the actor and film_actor tables. There must be at least six actors in total.
INSERT INTO actor (first_name, last_name)
VALUES
('Brendan', 'Fraser'),    
('Rachel', 'Weisz'),
('Daniel', 'Radcliffe'),   
('Emma', 'Watson'),
('Elijah', 'Wood'),     
('Ian', 'McKellen');

SELECT film_id, title
FROM film
WHERE title IN (
    'The Mummy',
    'Harry Potter and the Sorcerer''s Stone',
    'The Lord of the Rings: The Fellowship of the Ring'
);

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name IN (
    'Fraser', 'Weisz', 'Radcliffe', 'Watson', 'Wood', 'McKellen'
);
INSERT INTO film_actor (actor_id, film_id)
VALUES

(XXX, XXXX),
(XXX, XXX),

-- Harry Potter
(YYYY, YYYYY),
(YYYYY, YYYY),

-- LOTR
(ZZZ, ZZZZ),
(ZZZ, ZZZZ);
--1.1 Choose your top three favorite movies and add them to the film table. Include description information for each movie. 
--Set the rental rates to 4.99, 9.99, and 19.99, and the rental durations to 1, 2, and 3 weeks respectively.

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
    (SELECT language_id FROM LANGUAGE WHERE LANGUAGE.name = 'English'),
    124,
    19.99,
    'PG-13'
),
(   'Harry Potter and the Sorcerer''s Stone',
    'A young boy discovers he is a wizard and begins his journey at a magical school, uncovering secrets about his past.',
    2001,
    9.99,
    14, 
    (SELECT language_id FROM LANGUAGE WHERE LANGUAGE.name = 'English'),
    152,
    24.99,
    'PG'
),
(   'The Lord of the Rings: The Fellowship of the Ring',
    'A hobbit sets out on a dangerous journey to destroy a powerful ring and save Middle-earth.',
    2001,
    19.99,
    21, 
    (SELECT language_id FROM LANGUAGE WHERE LANGUAGE.name = 'English'),
    178,
    29.99,
    'PG-13'
);



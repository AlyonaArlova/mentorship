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
(
    'The Mummy',
    'An adventurer accidentally awakens an ancient cursed priest while exploring a lost Egyptian city.',
    1999,
    4.99,
    7,
    (SELECT language_id
     FROM language
     WHERE name = 'English'),
    124,
    19.99,
    'PG-13'
),
(
    'Harry Potter and the Sorcerer''s Stone',
    'A young boy discovers he is a wizard and begins his journey at a magical school while uncovering secrets about his past.',
    2001,
    9.99,
    14,
    (SELECT language_id
     FROM language
     WHERE name = 'English'),
    152,
    24.99,
    'PG'
),
(
    'The Lord of the Rings: The Fellowship of the Ring',
    'A hobbit begins a dangerous quest to destroy a powerful ring and protect Middle-earth from darkness.',
    2001,
    19.99,
    21,
    (SELECT language_id
     FROM language
     WHERE name = 'English'),
    178,
    29.99,
    'PG-13'
);

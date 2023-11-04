use movies_db;

# EJERCICIOS SELECT 
SELECT * FROM movies;
SELECT first_name, last_name, rating FROM actors;
SELECT title FROM series;
SELECT title, rating, length FROM movies;

# WHERE Y ORDER BY
SELECT first_name, last_name FROM actors WHERE rating > 7.5;
SELECT title, rating, awards FROM movies WHERE rating > 7.5 AND awards > 2;
SELECT title, rating FROM movies ORDER BY rating;
SELECT first_name, rating  FROM actors WHERE rating > 4.00 AND  RATING < 10.0;
SELECT title, release_date FROM movies WHERE length > 150;

# BETWEEN y LIKE
SELECT title, rating FROM movies WHERE title LIKE'%Toy Story%';
SELECT first_name FROM actors WHERE first_name LIKE 'Sam%';
SELECT first_name, last_name FROM actors ORDER BY rating DESC;
SELECT title, release_date FROM movies ORDER BY rating DESC;
SELECT first_name, last_name FROM actors WHERE first_name LIKE '%a%';
SELECT title FROM movies WHERE updated_at BETWEEN ‘2004-01-01’ AND ‘2008-12-31’;



--------------------------------------------------------------------------------
-- COMP2400/COMP6240 SQL Assignment S1 2025
-- Please write your UID here: u7499609
-- Please enter your SQL queries for each of Questions 1-9 below the
-- corresponding comment line below, and leave those comment lines in
-- place.
--------------------------------------------------------------------------------

-- Q1
    -- References:
    -- 1. https://www.w3schools.com/sql/sql_orderby.asp - order by syntax
    -- 2. https://www.w3schools.com/sql/sql_distinct.asp - select distinct syntax
    -- select unique country rows from the movie schema ordered by the country.

    select distinct country from movie order by country;

    -- Output
        --  country
        -- -------------
        --  Australia
        --  Canada
        --  China
        --  France
        --  Germany
        --  India
        --  Italy
        --  Mexico
        --  New Zealand
        --  Taiwan
        --  UK
        --  USA

-- Q2
    -- References:
    -- 1. https://www.w3schools.com/sql/sql_count.asp - count(*) syntax

    select country, count(*) as movie_count
    moviedb-> from movie
    moviedb-> group by country
    moviedb-> order by movie_count desc;

    -- Output
        --    country   | movie_count
        -- -------------+-------------
        -- USA         |          72
        -- New Zealand |           7
        -- UK          |           7
        -- Germany     |           3
        -- Australia   |           3
        -- China       |           3
        -- Canada      |           2
        -- Mexico      |           1
        -- Taiwan      |           1
        -- India       |           1
        -- France      |           1
        -- Italy       |           1

-- Q3
-- person - 00000462 - Anthony Perkins -  
-- Role - select * from role where id='00000462';
-- 
SELECT p.first_name, p.last_name, r.title, r.production_year FROM role r
JOIN person p ON r.id = p.id
GROUP BY p.first_name, p.last_name, r.title, r.production_year
HAVING COUNT(*) > 1;

-- Q4
-- List the award names (in the award table) that have not been given to any actor 
-- (i.e., that do not appear in the actor award table). The query result should have a single column, 
-- with the award names in alphabetical order and without repetitions.
-- LEFT MIDDLE RIGHT
SELECT DISTINCT a.award_name
FROM award a
LEFT JOIN actor_award aw ON a.award_name = aw.award_name AND aw.result = 'won'
WHERE aw.award_name IS NULL;

-- Q5
-- What is the maximum number of roles for any movie listed in the database? 
-- Note: different roles played by the same actor in a movie still count as different 
-- roles. The query result should be a single row with a single column, containing the maximum number.
-- select title, count(*) as max_roles from role group by title order by asc;
select title, count(*) as max_roles from role group by title order by max_roles desc limit 1;

-- Q6
-- List the first and last name of all persons who have won a director award but never won a writer award. 
-- The query result should have two columns, with the person’s first and last name, and no duplicate rows.
-- select da.first_name da.last_name from director_award da 
SELECT DISTINCT p.first_name, p.last_name FROM director_award da
JOIN director d ON da.title = d.title AND da.production_year = d.production_year
JOIN person p ON d.id = p.id
WHERE LOWER(da.result) = 'won'
  AND d.id NOT IN (
      SELECT id
      FROM writer_award
      WHERE LOWER(result) = 'won'
  );


-- Q7
--  List the title and production year of all movies that have won either a movie award or a director’s award,
--  along with the director’s first and last name. That is, the query result should have four columns: title, 
--  production year, director’s first name and director’s last name, and no duplicate rows.
SELECT DISTINCT d.title, d.production_year, p.first_name, p.last_name
FROM director d
JOIN person p ON d.id = p.id
WHERE (d.title, d.production_year) IN (
    SELECT title, production_year
    FROM movie_award
    WHERE LOWER(result) = 'won'
    UNION
    SELECT title, production_year
    FROM director_award
    WHERE LOWER(result) = 'won'
);

-- Q8
-- List all actors (first name and last name) who have played a role in a movie that has won less than 2 movie awards 
-- (including none), together with the title and production year of the movie. The query result should have four columns: T
-- he actor’s first and last names, and the movie’s title and production year.

-- We want to first find all of the movies, and then the movie_award movies, and do a left join with the condition
-- that movie_awards is less than two basically.
-- select ma.title from movie_award ma
-- group by ma.title
-- having count(*) < 2;
-- Now we have all of the movies we odn't want, we can use a subquerry to find the list of movies we DO want.
-- select distinct m.title, m.production_year
-- from movie m
-- where m.title not in (
--     select title
--     from movie_award
--     group by title
--     having count(*) > 2
-- );
-- Almost made the mistake of <2, it's >2
-- For the next part, we can use the code from part 3
-- SELECT p.first_name, p.last_name, r.title, r.production_year FROM role r
-- JOIN person p ON r.id = p.id
-- GROUP BY p.first_name, p.last_name, r.title, r.production_year
-- HAVING COUNT(*) > 1;
-- After altering it a bit, we can just get the first and last name for the actor who have played in a movie.
SELECT p.first_name, p.last_name, r.title, r.production_year FROM role r
JOIN person p ON r.id = p.id
join movie m on m.title = r.title
where m.title not in (
    select title
    from movie_award 
    WHERE LOWER(result) = 'won'
    group by title
    having count(*) < 2
)
order by r.title asc;

-- This seems to work, sneaky with 'won' being 'Won' and 'WON' so need to use like .lower() func for sql.

-- Q9   

-- List all actors who have had roles in the largest number of different movie genres (as given by the attribute 
-- major genre of the movie relation). (For example, according to our example database, Meg Ryan has had a role in 
-- two different genres of movie: one drama, and three comedies.) The query result should have two columns, with the 
-- actors’ first and last name.

-- ok, we want to find all of the actors, and link it with all of the movie genres that they have been in.
-- but we want a count of the movie genres, not the names, then we will sort it in descending order.
SELECT p.first_name, p.last_name, COUNT(DISTINCT m.major_genre) AS genre_count
FROM person p
JOIN role r ON p.id = r.id 
JOIN movie m ON m.title = r.title
GROUP BY p.first_name, p.last_name
HAVING COUNT(DISTINCT m.major_genre) = (
    SELECT MAX(genre_count)
    FROM (
        SELECT COUNT(DISTINCT m.major_genre) AS genre_count
        FROM person p
        JOIN role r ON p.id = r.id
        JOIN movie m ON m.title = r.title
        GROUP BY p.id
    ) AS genre_counts
)
ORDER BY genre_count DESC, p.first_name, p.last_name;

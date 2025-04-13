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

    -- select distinct country from movie order by country;
    -- Above is my original querry but it's probably important to add not null to it, 
    -- not that it makes a difference to the test data given.

select distinct country from movie where country is not null order by country;

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
from movie
where country is not null
group by country
order by movie_count desc;

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
select p.first_name, p.last_name, r.title, r.production_year from role r
join person p on r.id = p.id
group by p.first_name, p.last_name, r.title, r.production_year
having count(*) > 1;

-- Q4
    -- List the award names (in the award table) that have not been given to any actor 
    -- (i.e., that do not appear in the actor award table). The query result should have a single column, 
    -- with the award names in alphabetical order and without repetitions.
    -- LEFT MIDDLE RIGHT
select distinct a.award_name
from award a
left join actor_award aw on a.award_name = aw.award_name and lower(aw.result) = 'won'
where aw.award_name is null
order by a.award_name;

-- Q5
    -- What is the maximum number of roles for any movie listed in the database? 
    -- Note: different roles played by the same actor in a movie still count as different 
    -- roles. The query result should be a single row with a single column, containing the maximum number.
    -- select title, count(*) as max_roles from role group by title order by asc;
    -- Original but it's wrong because it wants onlt the max roles
    -- select title, count(*) as max_roles from role group by title order by max_roles desc limit 1;
    -- Goes through the role groups the roles by the title and orders it by the max_roles field.
select count(*) as max_roles from role group by title, production_year order by max_roles desc limit 1;


-- Q6
    -- List the first and last name of all persons who have won a director award but never won a writer award. 
    -- The query result should have two columns, with the person’s first and last name, and no duplicate rows.
    -- select da.first_name da.last_name from director_award da 
    -- Goes into writer_award and selects the id where the result is won
    -- joins on the title and production year to get the directors who've won a 
select distinct p.first_name, p.last_name from director_award da
join director d on da.title = d.title and da.production_year = d.production_year
join person p on d.id = p.id
where lower(da.result) = 'won'
  and d.id not in (
      select id
      from writer_award
      where lower(result) = 'won'
  );


-- Q7
    --  List the title and production year of all movies that have won either a movie award or a director’s award,
    --  along with the director’s first and last name. That is, the query result should have four columns: title, 
    --  production year, director’s first name and director’s last name, and no duplicate rows.
select distinct d.title, d.production_year, p.first_name, p.last_name
from director d
join person p ON d.id = p.id
where (d.title, d.production_year) in (
    select title, production_year
    from movie_award
    where LOWER(result) = 'won'
    union
    select title, production_year
    from director_award
    where LOWER(result) = 'won'
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
    
select p.first_name, p.last_name, r.title, r.production_year from role r
join person p on r.id = p.id
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
    
select p.first_name, p.last_name
from person p join role r on p.id = r.id 
join movie m on m.title = r.title and m.production_year = r.production_year
group by p.first_name, p.last_name
having count(distinct m.major_genre) = (
    select max(genre_count)
    from (
        select count(distinct m.major_genre) as genre_count
        from role r
        join movie m on m.title = r.title and m.production_year = r.production_year
        group by r.id
    ) as genre_counts
);

-- -- -- -- --
-- -- -- -- --
-- -- -- -- --

-- Output from test file

-- moviedb=> \! vim hello.txt
-- moviedb=> \i hello.txt
--    country
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
-- (12 rows)

--    country   | movie_count
-- -------------+-------------
--  USA         |          72
--  New Zealand |           7
--  UK          |           7
--  Germany     |           3
--  Australia   |           3
--  China       |           3
--  Canada      |           2
--  Mexico      |           1
--  Taiwan      |           1
--  India       |           1
--  France      |           1
--  Italy       |           1
-- (12 rows)

--  first_name | last_name |     title     | production_year
-- ------------+-----------+---------------+-----------------
--  Anthony    | Perkins   | Psycho        |            1960
--  Vince      | Vaughn    | Psycho        |            1998
--  Leslie     | Cheung    | Bawang Bie Ji |            1993
-- (3 rows)

--              award_name
-- -------------------------------------
--  Eddie
--  Locarno International Film Festival
-- (2 rows)

--  max_roles
-- -----------
--         10
-- (1 row)

--  first_name | last_name
-- ------------+------------
--  James      | Cameron
--  Sam        | Mendes
--  Steven     | Soderbergh
--  Steven     | Spielberg
-- (4 rows)

--            title            | production_year | first_name |  last_name
-- ----------------------------+-----------------+------------+--------------
--  American Beauty            |            1999 | Sam        | Mendes
--  Bawang Bie Ji              |            1993 | Kaige      | Chen
--  Cyrano de Bergerac         |            1990 | Jean-Paul  | Rappeneau
--  Dahong Denglong Gaogao Gua |            1991 | Yimou      | Zhang
--  Gandhi                     |            1982 | Richard    | Attenborough
--  Gladiator                  |            2000 | Ridley     | Scott
--  Saving Private Ryan        |            1998 | Steven     | Spielberg
--  Shakespeare in Love        |            1998 | John       | Madden
--  Strictly Ballroom          |            1992 | Baz        | Luhrmann
--  The Piano                  |            1993 | Jane       | Campion
--  Titanic                    |            1997 | James      | Cameron
--  Traffic                    |            2000 | Steven     | Soderbergh
-- (12 rows)

--  first_name | last_name
-- ------------+-----------
--  Brad       | Pitt
--  Bruce      | Willis
--  Harvey     | Keitel
--  Tom        | Hanks
--  Winona     | Ryder
-- (5 rows)

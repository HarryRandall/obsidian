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



-- Q5



-- Q6



-- Q7



-- Q8



-- Q9


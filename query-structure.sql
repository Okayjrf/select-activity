SELECT <column name(s)> function() FROM <tablename>


-- are most Ferraris red?
SELECT DISTINCT color, count(color) 
FROM registration 
Where make = 'FERRARI'
GROUP BY color
ORDER BY count ASC;

-- Answer:  No, Most are black

--        color       | count 
-- -------------------+-------
--                    |     0
--  ALUMINUM / SILVER |     1
--  IVORY             |     1
--  RED               |     1
--  BLACK             |     2


-- sub query where the model count is greater than 3 for the model years older than 2005
SELECT * 
FROM (SELECT DISTINCT make, model, count(model)
FROM registration
WHERE myear > 2005
GROUP BY model, make) bagel
WHERE count > 3
ORDER BY count DESC;


--What is the top 5 most common model year

SELECT DISTINCT Myear, count(Myear)
FROM registration
GROUP BY Myear
ORDER BY count DESC
LIMIT 5;

-- Answer:

--  myear | count 
-- -------+-------
--   2017 |  3025
--   2015 |  2883
--   2016 |  2805
--   2018 |  2790
--   2019 |  2463
-- (5 rows)


-- How many F-150's were registered in 2013?
SELECT Myear, count(Myear)
FROM registration
WHERE model = 'F-150' AND Myear = 2013
GROUP BY Myear;


-- which counties have the mosst electric vechicles?
SELECT county, count(county)
FROM registration
WHERE electrification = 'BEV (Battery Electric Vehicle)'
GROUP BY county
ORDER BY count DESC;

-- Answer:
--          county          | count 
-- -------------------------+-------
--  King                    |   732
--  Snohomish               |   148
--  Clark                   |    83
--  Pierce                  |    75
--  Kitsap                  |    37
--  Whatcom                 |    34
--  Spokane                 |    29
--  Thurston                |    27
--  Skagit                  |    17
--  Island                  |    17
--  Benton                  |    12
--  Chelan                  |     9
--  Unknown or Out of State |     8
--  Cowlitz                 |     7
--  Grant                   |     6
--  Clallam                 |     6
--  Yakima                  |     6
--  San Juan                |     5
--  Mason                   |     4
--  Lewis                   |     3
--  Grays Harbor            |     3
--  Jefferson               |     3
--  Franklin                |     2
--  Klickitat               |     2
--  Walla Walla             |     2
--  Kittitas                |     2
--  Skamania                |     1
--  Whitman                 |     1
--  Douglas                 |     1
-- (29 rows)


-- how many vehicles per make? what is the interesting order?

SELECT make, count(make)
FROM registration
GROUP BY make
ORDER BY count DESC;



-- Number of Tesla vehicles by model
SELECT model, count(model)
FROM registration
WHERE Make = 'TESLA'
GROUP BY Model
ORDER BY count ASC;

--Answer:
--   model   | count 
-- ----------+-------
--  ROADSTER |     2
--  MODEL X  |    86
--  MODEL Y  |   120
--  MODEL S  |   225
--  MODEL 3  |   474
-- (5 rows)

-- Here are some querys that you can use in the terminal

SELECT DISTINCT make, model from registration;

SELECT DISTINCT ownertype, model from registration limit 5;

SELECT DISTINCT electrification from registration;

SELECT DISTINCT use, color from registration;

SELECT DISTINCT electrification, state from registration;

-- finds the count of entries in make
SELECT count(make) from registration;

-- find color for ferrari
SELECT color from registration where make = 'FERRARI';

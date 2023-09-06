SELECT * FROM world_game_sales;

-- DATA CLEANING

-- check for NULL values
SELECT *
FROM world_game_sales
WHERE Genre IS NULL;

SELECT *
FROM world_game_sales
WHERE Year IS NULL;

-- change column name
ALTER TABLE world_game_sales
RENAME COLUMN NA_Sales TO 
US_CA_Sales;

-- change data type
SHOW COLUMNS FROM world_game_sales; -- check table

SHOW COLUMNS FROM world_game_sales
WHERE Field = 'Year';

ALTER TABLE world_game_sales
MODIFY COLUMN Year YEAR;

-- remove rows from before the year 2000
SELECT
COUNT(DISTINCT Year) 
FROM world_game_sales;

SELECT
COUNT(DISTINCT Genre)
FROM world_game_sales; 

SELECT
Year, COUNT(*) FROM world_game_sales
GROUP BY Year
ORDER BY Year ASC; -- data was from 1981 to 2020

SELECT
Genre, COUNT(*) FROM world_game_sales
GROUP BY Genre; -- count in random order

SELECT Genre,
 COUNT(Genre)
 FROM world_game_sales
 GROUP BY Genre
 ORDER BY COUNT(Genre); -- count in ascending order
 
 -- reconnect to server in Query - Recoonect to Server
 
 -- now deleting 2 of the Genres with the least entries -> puzzle and strategy 
 DELETE FROM world_game_sales
 WHERE Genre = 'Strategy';
 
 DELETE FROM world_game_sales
 WHERE Genre = 'Puzzle';
 
DELETE FROM world_game_sales
WHERE Year < 1986;

DELETE FROM world_game_sales
WHERE Year > 2016;
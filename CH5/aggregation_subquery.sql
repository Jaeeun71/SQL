-- 20강 --
SELECT * FROM sample51;
SELECT COUNT(*) FROM sample51;

SELECT * FROM sample51 WHERE name = 'A';
SELECT COUNT(*) FROM sample51 WHERE name = 'A';

SELECT COUNT(no), COUNT(name) FROM sample51;

SELECT ALL name FROM sample51;
SELECT DISTINCT name FROM sample51;

SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;


-- 21강 --
SELECT SUM(quantity) FROM sample51;
SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;
SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name) FROM sample51;

-- 22강 --
SELECT name FROM sample51 GROUP BY name;
SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name;
SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name)=1;
SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;

-- 23강 --
SELECT MIN(a) FROM sample54;

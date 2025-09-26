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
DELETE FROM sample54 WHERE a = (SELECT MIN(a) FROM sample54);
SELECT
(SELECT COUNT(*) FROM sample51) AS sq1,
(SELECT COUNT(*) FROM sample54) AS sq2;
UPDATE sample54 SET a = (SELECT MAX(a) FROM sample54);
SELECT * FROM (SELECT * FROM sample54) AS sq;
SELECT * FROM (SELECT * FROM (SELECT * FROM sample54) sq1) sq2;
INSERT INTO sample541 VALUES(
    (SELECT COUNT(*) FROM sample51),
    (SELECT count(*) FROM sample54)
);
SELECT * from sample541;
INSERT INTO sample541 SELECT 1, 2;
SELECT * FROM sample541;

-- 24강 --
UPDATE sample551 SET a = '있음' WHERE
    EXISTS (SELECT * FROM sample552 WHERE no2=no);
UPDATE sample551 SET a = '없음' WHERE
    NOT EXISTS (SELECT * FROM sample552 WHERE no2=no);
UPDATE sample551 SET a = '있음' WHERE
    EXISTS (SELECT * FROM sample552 WHERE sample552.no2=sample551.no);
SELECT * FROM sample551 where no IN(3,5);
SELECT * FROM sample551 where no IN (SELECT no2 FROM sample552);
SELECT* FROM sample34;
SELECT*, price*quantity FROM sample34;
SELECT*, price*quantity AS amount FROM sample34;
SELECT*, price*quantity AS amount FROM sample34
WHERE price*quantity >= 2000;
SELECT*, price*quantity AS amount FROM sample34 ORDER BY price*quantity DESC;
SELECT*, price*quantity AS amount FROM sample34 ORDER BY amount DESC;

SELECT * FROM sample341;
SELECT amount, ROUND(amount) FROM sample341;
SELECT amount, ROUND(amount,1) FROM sample341;
SELECT amount, ROUND(amount,-2) FROM sample341;

SELECT * FROM sample35;
SELECT CONCAT(quantity, unit) FROM sample35;

SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_DATE + INTERVAL 1 DAY;
SELECT CURRENT_DATE - INTERVAL 1 DAY;


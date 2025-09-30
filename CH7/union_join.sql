-- 31강 --
SELECT * FROM sample71_a
UNION
SELECT * FROM sample71_b;

SELECT a AS c FROM sample71_a
UNION
SELECT b AS c FROM sample71_b ORDER BY c;

SELECT * FROM sample71_a
UNION ALL
SELECT * FROM sample71_b;

-- 32강 --
SELECT * FROM sample72_x, sample72_y;

CREATE TABLE 상품 (
    상품코드 CHAR(4) NOT NULL,
    상품명 VARCHAR(30),
    메이커명 VARCHAR(30),
    가격 INTEGER,
    상품분류 VARCHAR(30),
    PRIMARY KEY (상품코드)
);

CREATE Table 재고수 (
    상품코드 CHAR(4),
    입고날짜 DATE,
    재고수 INTEGER
);

SELECT 상품.상품명, 재고수.재고수 FROM 상품, 재고수
WHERE 상품.상품코드=재고수.상품코드
AND 상품.상품분류='식료품';


CREATE Table 메이커(
    메이커코드 CHAR(4) NOT NULL,
    메이커명 VARCHAR(30),
    PRIMARY KEY(메이커코드)
);

SELECT S.상품명, M.메이커명 
FROM 상품2 S INNER JOIN 메이커 M
ON S.메이커코드 = M.메이커코드;

SELECT S1.상품명, S2.상품명
FROM 상품 S1 INNER JOIN 상품 S2
ON S1.상품코드 = S2.상품코드;


SELECT 상품3.상품명, 재고수.재고수
FROM 상품3 INNER JOIN 재고수
ON 상품3.상품코드 = 재고수.상품코드
WHERE 상품3.상품분류 = '식료품';

SELECT 상품3.상품명, 재고수.재고수
FROM 상품3 LEFT JOIN 재고수
ON 상품3.상품코드 = 재고수.상품코드
WHERE 상품3.상품분류 = '식료품';
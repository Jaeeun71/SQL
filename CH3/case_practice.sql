SELECT a FROM sample37;
SELECT a, CASE WHEN a IS NULL THEN 0 ELSE a END "a(null=0)" FROM sample37;
SELECT a AS "코드",
CASE 
    WHEN a = 1 THEN '남자' 
    WHEN a = 2 THEN '여자'
    ELSE '미지정'
    END AS "성별" FROM sample37;
SELECT a AS "코드",
CASE a
    WHEN 1 THEN '남자' 
    WHEN 2 THEN '여자'
    ELSE '미지정'
    END AS "성별" FROM sample37;
SELECT a AS "코드",
CASE 
    WHEN a = 1 THEN '남자' 
    WHEN a = 2 THEN '여자'
    WHEN a IS NULL THEN '데이터 없음'
    ELSE '미지정'
    END AS "성별" FROM sample37;
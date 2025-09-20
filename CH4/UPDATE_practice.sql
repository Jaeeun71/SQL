SELECT * FROM sample41;
UPDATEsample41 SET b='2014-09-07' WHERE no=2;
SELECT * FROM sample41;

SELECT * FROM sample41;
UPDATE sample41 SET no=no+1;
SELECT * FROM sample41;

SELECT * FROM sample41;
UPDATE sample41 SET no=no+1, a=no;
SELECT * FROM sample41;

UPDATE sample41 SET a=no, no=no+1;
SELECT * FROM sample41;

UPDATE sample41 SET a=NULL;
SELECT * FROM sample41;
-- 26강 --
CREATE TABLE sample62(
    no INTEGER NOT NULL,
    a VARCHAR(30),
    b date);
DESC sample62;
ALTER Table sample62 ADD newcol integer;
DESC sample62;
ALTER TABLE sample62 MODIFY newcol VARCHAR(20);
DESC sample62;
ALTER TABLE sample62 CHANGE newcol c VARCHAR(20);
DESC sample62;
ALTER TABLE sample62 DROP c;
DESC sample62;

-- 27강 --
CREATE Table sample631 (
    a INTEGER NOT NULL,
    b INTEGER NOT NULL UNIQUE,
    c VARCHAR(30)
);

CREATE TABLE sample632(
    no INTEGER NOT NULL,
    sub_no INTEGER NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY(no, sub_no)
);

CREATE TABLE sample632(
    no INTEGER NOT NULL,
    sub_no INTEGER NOT NULL,
    name VARCHAR(30),
    CONSTRAINT pkey_sample PRIMARY KEY(no, sub_no)
);

ALTER Table sample631 MODIFY c VARCHAR(30) NOT NULL;
ALTER Table sample631 ADD CONSTRAINT pkey_sample631 PRIMARY KEY(a);

ALTER Table sample631 MODIFY c VARCHAR(30);
ALTER Table sample631 DROP CONSTRAINT pkey_sample631;
ALTER Table sample631 DROP PRIMARY KEY;

CREATE table sample634(
    p INTEGER NOT NULL,
    a VARCHAR(30),
    COSTRAINT pkey_sample634 PRIMARY KEY(p)
);
INSERT INTO sample634 VALUES (1,'첫째줄');
INSERT INTO sample634 VALUES (2,'둘째줄');
INSERT INTO sample634 VALUES (3,'셋째줄');

INSERT INTO sample634 VALUES (2,'넷째줄');

UPDATE sample634 SET p=2 WHERE p=3;

SELECT a,b FROM sample635;

-- 29강 --
CREATE INDEX isample65 ON sample62(no);
DROP INDEX isample65 ON sample62;
EXPLAIN SELECT * FROM sample62 WHERE a='a';
EXPLAIN SELECT * FROM sample62 WHERE no > 10;

-- 30강 --
CREATE View sample_view_67 AS SELECT * FROM sample54;
SELECT * FROM sample_view_67;
DROP VIEW sample_view_67;
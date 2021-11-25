USE test;

CREATE TABLE mytable9 (
	col1 DATE,
    col2 DATETIME
);

DESC mytable9;

SELECT * FROM mytable9;

INSERT INTO mytable9 (col1) VALUES ('2021-11-25');

INSERT INTO mytable9 (col2) VALUES('2021-11-25 12:30:10');

-- 현재시간 알고싶다
SELECT now();

INSERT INTO mytable9 (col1, col2) VALUES (now(), now());




















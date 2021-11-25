USE test;

-- CHARTYPE
CREATE TABLE mytable1 (
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4)
VALUES ('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1)
VALUES ('ab');  -- 안됨

INSERT INTO mytable1 (col4)
VALUES ('ab');


-- VARCHAR
CREATE TABLE mytable2 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1,c2,c3,c4) VALUES ('a', 'ab', 'abc', 'abcd');
INSERT INTO mytable2 (c2) VALUES ('abc');  -- X
INSERT INTO mytable2 (c4) VALUES ('ab');

SELECT * FROM mytable2;

-- 연습: 2개의 테이블 mytable3, mytable4 만들기
-- VARCHAR, CHAR 타입을 사용


CREATE TABLE mytable3 (
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4),
    col5 CHAR(5),
    col6 CHAR(6),
    col7 CHAR(7)
);
INSERT INTO mytable3 (col1, col2, col3, col4, col5, col6, col7)
VALUES ('a', 'ab','abc','abcd','abcde','abcdef','abcdefg');   

SELECT * FROM mytable3;

CREATE TABLE mytable4 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4),
    c5 VARCHAR(5),
    c6 VARCHAR(6),
    c7 VARCHAR(7) 
);
INSERT INTO mytable4 ( c1,c2,c3,c4,c5,c6,c7)
VALUES ( 'z', 'zy', 'zyx', 'zyxw', 'zyxwv', 'zyxwvu', 'zyxwvut');

SELECT * FROM mytable4;
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SET sql_mode = '';



DESC mytable4;

CREATE TABLE mytable8 (
	col1 DECIMAL(2) , 
    col2 DECIMAL(4,3),
    col3 Double
);

DESC mytable8;
DESCRIBE mytable8;






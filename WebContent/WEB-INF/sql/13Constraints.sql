USE test;



-- not null
CREATE TABLe mytable12 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable12;

INSERT INTO mytable12 (col1, col2) VALUES ('abc','def');
INSERT INTO mytable12 (col2) VALUES ('ghi');
INSERT INTO mytable12 (col1) VALUES ('jkl');  -- 오류남 default value 값이어야함

-- UNIQUE

CREATE TABLE mytable13 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) UNIQUE
);

SELECT * FROM mytable13;

INSERT INTO mytable13 (col1 , col2) VALUES ('abc', 'def');
INSERT INTO mytable13 (col1 , col2) VALUES ('abc', 'def');  -- col2가 UNIQUE라서 안됨
INSERT INTO mytable13 (col1 , col2) VALUES ('abc', 'de');
INSERT INTO mytable13 (col1) VALUES ('abc');

-- NOT NULL, UNIQUE
CREATE TABLE mytable14 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable14;

INSERT INTO mytable14 (col1 , col2) VALUES ('abc','def');
INSERT INTO mytable14 (col2) VALUES ('def');



-- CHECK 
CREATE TABLE mytable15 (
	col1 INT,
    col2 INT CHECK (col2 >= 100 AND col2 <=200)
);

SELECT * FROM mytable15;

INSERT INTO mytable15 (col1, col2) VALUES (-1000, 100);
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 300); -- col2가 200넘어서 안됨

-- DEFAULT

CREATE TABLE mytable16 (
	col1 INT DEFAULT 0,
    col2 VARCHAR(5) DEFAULT 'a',
    col3 DATE DEFAULT NOW(),
    col4 DATETIME DEFAULT NOW()
);


SELECT * FROM mytable16;

INSERT INTO mytable16 () VALUES (); -- 기본값 적용됨
INSERT INTO mytable16 (col1) VALUES (10);
INSERT INTO mytable16 (col2, col4) VALUES ('hello', '1991-11-11 11:22:33'); 


-- DESC
DESC mytable12;
DESC mytable13;
DESC mytable15;
DESC mytable16;









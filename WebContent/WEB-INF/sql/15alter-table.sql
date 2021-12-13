USE test;




DESC mytable19Student;
SELECT* FROM mytable19Student;

-- add column
ALTER TABLE mytable19Student ADD COLUMN (
	height DOUBLE 
);

ALTER TABLE mytable19Student ADD COLUMN (
	weight DOUBLE,
    foot DOUBLE
);

ALTER TABLE mytable19Student DROP COLUMN foot;

-- AFTER

ALTER TABLE mytable19Student DROP COLUMN foot2;

ALTER TABLE mytable19Student ADD foot DOUBLE AFTER name;
ALTER TABLE mytable19Student ADD foot2 DOUBLE AFTER foot;


DESC mytable19Student;

SELECT * FROM mytable19Student;


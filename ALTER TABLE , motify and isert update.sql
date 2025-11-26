CREATE TABLE anik_kumar(
    a_dob Date,
    a_id number(10) primary key,
    a_department varchar2(5),
    a_cgpa number(1,2)
);

RENAME anik_kumar to anik_kumar_saha;

ALTER TABLE anik_kumar_saha add a_dge number(5);

ALTER TABLE anik_kumar_saha drop column a_dob;

ALTER TABLE anik_kumar_saha RENAME column a_dge to a_boyosh;

ALTER TABLE anik_kumar_Saha modify a_cgpa number(5,4);

ALTER TABLE anik_kumar_Saha modify a_boyosh number(5,5);

DROP TABLE anik_kumar_saha;

-- DML (Data Manipulation Language) Queries
TRUNCATE TABLE anik_kumar_saha;

INSERT INTO anik_kumar_saha VALUES(101,'set',3.5,20,5);

INSERT INTO ashh VALUES(101,'09-Jan-1987',2.50);

INSERT INTO ashh VALUES(101,to_date('09-Jan-1987','DD-MN-YYYY'),2.50);

DELETE FROM anik_kumar_saha WHERE a_id=102;

DELETE FROM anik_kumar_saha;

UPDATE anik_kumar_saha SET a_cgpa=10 WHERE a_id=101;

UPDATE anik_kumar_saha SET a_cgpa=10;
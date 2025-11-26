CREATE TABLE student (
    id NUMBER(5) PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50),
    cgpa NUMBER(3,2),
    age NUMBER(3),
    dob DATE,
    date_of_admission DATE
);
INSERT INTO student (id, name, department, cgpa, age, dob, date_of_admission)
VALUES (1, 'OVI', 'CSE', 3.50, 21, TO_DATE('2002-05-12','YYYY-MM-DD'), TO_DATE('2021-01-10','YYYY-MM-DD'));
INSERT INTO student (id, name, department, cgpa, age, dob, date_of_admission)
VALUES (2, 'Rahul', 'PHARMACY', 3.20, 22, TO_DATE('2001-08-20','YYYY-MM-DD'), TO_DATE('2020-12-15','YYYY-MM-DD'));
INSERT INTO student (id, name, department, cgpa, age, dob, date_of_admission)
VALUES (3, 'Nowshin', 'COE', 3.80, 20, TO_DATE('2003-02-18','YYYY-MM-DD'), TO_DATE('2022-02-01','YYYY-MM-DD'));

SELECT *
FROM student

UPDATE student
SET date_of_admission = TO_DATE('2022-06-01','YYYY-MM-DD')
WHERE id = 2;

DELETE FROM student
WHERE id = 1;

SELECT *
FROM student
WHERE date_of_admission > TO_DATE('2001-12-31','YYYY-MM-DD');

SELECT id, name,
       ROUND(MONTHS_BETWEEN(SYSDATE, date_of_admission)/12, 2) AS years_studying
FROM student;

UPDATE student
SET cgpa = cgpa + 0.10;
DELETE FROM student
WHERE dob IS NULL;

UPDATE student
SET cgpa = cgpa + 0.10;

DELETE FROM student
WHERE dob IS NULL;

DELETE FROM student
WHERE date_of_admission < TO_DATE('2000-01-01','YYYY-MM-DD');

DROP TABLE student
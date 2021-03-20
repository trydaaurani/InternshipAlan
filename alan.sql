CREATE DATABASE ProjectAlan
CREATE TABLE NAME(
	id INT NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	id_work INT NOT NULL,
	id_salary INT NOT NULL
);

INSERT INTO NAME (id,NAME,id_work,id_salary) VALUES (1,'Rebecca',1,1);
INSERT INTO NAME (id,NAME,id_work,id_salary) VALUES (2,'Vita',2,2);

CREATE TABLE WORK(
	id INT NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	id_salary INT NOT NULL

);

INSERT INTO WORK (id,NAME,id_salary) VALUES (1,'Frontend Dev',1);
INSERT INTO WORK (id,NAME,id_salary) VALUES (2,'Backend Dev',2);

CREATE TABLE kategori(
	id INT NOT NULL,
	salary INT
);

INSERT INTO kategori(id,salary) VALUES (1,10000000);
INSERT INTO kategori(id,salary) VALUES (2,12000000);


SELECT name.name, work.name, kategori.salary
FROM ((NAME
INNER JOIN WORK ON name.id = work.id)
INNER JOIN kategori ON name.id = kategori.id);
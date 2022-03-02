use worker;

create table worker(
id int,
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
DEPARTMENT VARCHAR(25),
sALARY INT);


insert into worker values(1,'ash','sha','ECE',5000);
insert into worker values(2,'ravi','sastri','ECE',6000);
insert into worker values(3,'manik','basha','ECE',7000);
insert into worker values(4,'prem','doss','EEE',8000);
insert into worker values(5,'karthi','mentor','EEE',9000);
insert into worker values(6,'selva','durai','EEE',10000);
insert into worker values(7,'chal','mar','MECH',11000);
insert into worker values(8,'sunny','leone','MECH',12000);
insert into worker values(9,'julia','ann','MECH',13000);
insert into worker values(10,'ram','moorthy','MECH',14000);

select*from worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME from worker;
-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select DEPARTMENT FROM WORKER;
SELECT *FROM WORKER WHERE DEPARTMENT ='ECE';
SELECT *FROM WORKER WHERE DEPARTMENT ='EEE';
SELECT *FROM WORKER WHERE DEPARTMENT ='MECH';
-- Q-3. Write an SQL query to show the last 5 record from a table.
SELECT*FROM WORKER WHERE id>5;
-- ASSIGNMENT 2
-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table
SELECT SUBSTRING(first_name,1,3) FROM WORKER;
 -- nQ-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select *from worker where FIRST_NAME LIKE '%A';
SELECT FIRST_NAME,LOCATE('a',FIRST_NAME) FROM WORKER WHERE locate ('a',FIRST_NAME);
SELECT FIRST_NAME,POSITION('a' IN FIRST_NAME) FROM WORKER;
-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
select id,DEPARTMENT,max(salary) from worker group by DEPARTMENT;


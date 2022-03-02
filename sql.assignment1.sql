use worker;

create table worker(
id int,
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
DEPARTMENT VARCHAR(25));

insert into worker values(1,'ash','sha','ECE');
insert into worker values(2,'ravi','sastri','ECE');
insert into worker values(3,'manik','basha','ECE');
insert into worker values(4,'prem','doss','EEE');
insert into worker values(5,'karthi','mentor','EEE');
insert into worker values(6,'selva','durai','EEE');
insert into worker values(7,'chal','mar','MECH');
insert into worker values(8,'sunny','leone','MECH');
insert into worker values(9,'julia','ann','MECH');
insert into worker values(10,'ram','moorthy','MECH');

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

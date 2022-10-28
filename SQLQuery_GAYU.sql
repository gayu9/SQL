CREATE TABLE GAYATHRI_EMPLOYEES
(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
SALARY DECIMAL(8,2),
DEPARTMENT_ID INT,
YEAR_OF_JOINING DATETIME,
YEAR_OF_RELIEVING DATETIME
)

INSERT INTO GAYATHRI_EMPLOYEES
(ID,FIRST_NAME ,LAST_NAME ,SALARY ,DEPARTMENT_ID ,YEAR_OF_JOINING,YEAR_OF_RELIEVING )
VALUES
(13,'','',40000 , 5,'5/29/2005','03/22/2022')

,(12,'Maha','Lakshmi', 30000, 4,'07/09/2016','1/08/2020')

(5,'Maha','Lakshmi', 30000, 3,'03/19/2018','02/10/2021'),(6,'Sathya','Kumar', 15000, 2,'04/19/2009','05/8/2012'),(7,'Surya','Prakash', 45000, 4,'06/19/2019','05/8/2012'),(8,'Aruna','Subramaniyan', 55000, 3,'07/20/2013','10/6/2015'),(9,'Sathya','priya', 10000, 5,'06/9/2020','11/21/2022'),(10,'Raja','Lakshmi', 18000, 2,'2/25/2013','01/28/2018')


select * from GAYATHRI_EMPLOYEES

update GAYATHRI_EMPLOYEES set LAST_NAME = null where  ID = 13






CREATE TABLE GAYATHRI_DEPARTMENTS
(
DEPARTMENT_ID INT PRIMARY KEY,
MANAGER_ID INT,
DEPARTMENT_NAME VARCHAR(50)
)

insert into  GAYATHRI_DEPARTMENTS (DEPARTMENT_ID ,MANAGER_ID ,DEPARTMENT_NAME )
values
(1,2,'CEO'),(2,1,'DEVELOPER'),(3,4,'FINANCE'),(4,7,'TESTING'),(5,9,'HR')

select * from GAYATHRI_DEPARTMENTS as d

select * from GAYATHRI_EMPLOYEES

--question answers

--1)
select FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES where FIRST_NAME like 'S%'
--2)
select FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES where FIRST_NAME  like 'S%n' 
--3)
select FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES as g 
 where g.DEPARTMENT_ID=2 and FIRST_NAME like'S%'
 --4)
 select DEPARTMENT_ID from GAYATHRI_EMPLOYEES   where DEPARTMENT_ID like'_2%' 

 --5)
 select FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES where DEPARTMENT_ID in (1,2,5)
 --6)
 select FIRST_NAME,LAST_NAME ,SALARY from GAYATHRI_EMPLOYEES where SALARY between 10000 and 15000
 --7)
  select FIRST_NAME,LAST_NAME ,SALARY,g.DEPARTMENT_ID ,d.MANAGER_ID  from GAYATHRI_EMPLOYEES as g ,GAYATHRI_DEPARTMENTS as d where d.MANAGER_ID is  null
  --8)
  select * from GAYATHRI_EMPLOYEES  order by FIRST_NAME  asc
  --9)
  select * from GAYATHRI_EMPLOYEES  order by DEPARTMENT_ID  asc ,  SALARY desc;
  --10)
  select substring(FIRST_NAME,1,3) from GAYATHRI_EMPLOYEES 
  --11)
  select Right(LAST_NAME,2) from GAYATHRI_EMPLOYEES
  --12)
  select FIRST_NAME ,charindex('a',FIRST_NAME) as position from GAYATHRI_EMPLOYEES 
  --13)
  select max(SALARY) from GAYATHRI_EMPLOYEES
  --14)
  select max(SALARY) from GAYATHRI_EMPLOYEES WHERE SALARY < (select max(SALARY) from  GAYATHRI_EMPLOYEES) 
  --15)
  select avg(SALARY) from GAYATHRI_EMPLOYEES where DEPARTMENT_ID=3
  --16)
  select YEAR_OF_JOINING, count(*) from GAYATHRI_EMPLOYEES where DEPARTMENT_ID =3 group by YEAR_OF_JOINING 
  --17)
  select avg(SALARY)as avg_salary from GAYATHRI_EMPLOYEES where YEAR_OF_JOINING < getdate()
  --18)
  select month(YEAR_OF_JOINING) as month_of_joining from GAYATHRI_EMPLOYEES group by month(YEAR_OF_JOINING) having count(ID)>5
  --19)
   select LAST_NAME from GAYATHRI_EMPLOYEES where YEAR_OF_JOINING between '01/01/2010' and '12/31/2022'
  --20)
  select distinct year(YEAR_OF_JOINING) from GAYATHRI_EMPLOYEES  group by year(YEAR_OF_JOINING) having count(ID) >2
  --21)
select ID  from GAYATHRI_EMPLOYEES where SALARY >(select avg(SALARY) from GAYATHRI_EMPLOYEES)
  --22)
  select datediff(day,YEAR_OF_JOINING,YEAR_OF_RELIEVING), FIRST_NAME from  GAYATHRI_EMPLOYEES 

  --23)
  select distinct year(YEAR_OF_JOINING) ,FIRST_NAME from GAYATHRI_EMPLOYEES  order by year(YEAR_OF_JOINING) 

  --24)  
 select upper(FIRST_NAME)as first_name,lower(LAST_NAME)as last_name from GAYATHRI_EMPLOYEES
 --25)
 select len(FIRST_NAME) as lengthofname,FIRST_NAME, LAST_NAME from GAYATHRI_EMPLOYEES where LAST_NAME like '__b%'
  --26)
    select datediff(year,YEAR_OF_JOINING,YEAR_OF_RELIEVING) as Experience , FIRST_NAME from  GAYATHRI_EMPLOYEES 
 --27)
  select FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES where month(YEAR_OF_JOINING) = 5 
  --28)
  select ID,FIRST_NAME,LAST_NAME from GAYATHRI_EMPLOYEES where SALARY >(select avg(SALARY) from GAYATHRI_EMPLOYEES)
  --29)
  1.primary key means unique key table have only one primary key .
  example:
  CREATE TABLE GAYATHRI_EMPLOYEES
(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
SALARY DECIMAL(8,2),
DEPARTMENT_ID INT,
YEAR_OF_JOINING DATETIME,
YEAR_OF_RELIEVING DATETIME
)
2. foreign key  is primary key of another table one table have one,more foreign key 
example:

CREATE TABLE GAYATHRI_DEPARTMENTS
(
DEPARTMENT_ID INT PRIMARY KEY,
MANAGER_ID INT,
DEPARTMENT_NAME VARCHAR(50)
)
in thi Depertment_id is  foreign keye of employee table.

  --30)
 update    GAYATHRI_EMPLOYEES set LAST_NAME='AAA' ,set FRST_NAME='AAA' where LAST_NAME ,FRST_NAME IS NULL
 --31)
 create view GAYATHRI_VIEW as select ID,FIRST_NAME,LAST_NAME,g.DEPARTMENT_ID,DEPARTMENT_NAME from  GAYATHRI_EMPLOYEES as g inner join  
 GAYATHRI_DEPARTMENTS as d
 on d.DEPARTMENT_ID=g.DEPARTMENT_ID ;

--32)
 create synonym gayu_sysn for  GAYATHRI_EMPLOYEES 

 select * from gayu_sysn
 
--33)
create procedure Gayu_Procedure 
as
select * from GAYATHRI_EMPLOYEES where YEAR_OF_JOINING between '1/1/2010' and '12/31/2022'
Go

exec Gayu_Procedure
--34) 
create procedure Gayuu_Insert
as
insert into  GAYATHRI_DEPARTMENTS (DEPARTMENT_ID ,MANAGER_ID ,DEPARTMENT_NAME )
values
(11,6,'ADMIN')
go

exec Gayuu_Insert

--35)
select replace(convert(varchar,'2006-12-30',101),'-','') + replace(convert(varchar,' 00:38:54' ,108),':','');	





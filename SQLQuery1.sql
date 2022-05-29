/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [testDB].[dbo].[WareHouseEmployeeDemographics ]

SELECT *
From WareHouseEmployeeDemographics

  /*Advance SQL*/ 

 /*Common Table Expression*/ 

 WITH CTE_Employee as (
 SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics emp
Join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
WHERE  Salary > 45000
)
Select *
From CTE_Employee 


 WITH CTE_Employee as (
 SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics emp
Join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
WHERE  Salary > 45000
)
Select FirstName, AvgSalary
From CTE_Employee 

 /*Temp Tales*/ 

 Create table #temp_employee (
 EmployeeID int,
 JobTitle varchar(100),
 Salary int
 )

 select *
 from #temp_employee

 insert into #temp_employee values(
 1001, 'HR', 4500
 )

  select *
 from #temp_employee

 insert into #temp_employee 
 select *
 from EmployeeSalary

  select *
 from #temp_employee

create table  #temp_employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

select *
from #temp_employee2

insert into #temp_employee2 
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(SALARY)
FROM EmployeeDemographics emp
Join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

 select *
 from #temp_employee2


create table  #temp_employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)
insert into #temp_employee2 
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(SALARY)
FROM EmployeeDemographics emp
Join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle
select *
from #temp_employee2

drop table if exists #temp_employee2
create table  #temp_employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)
insert into #temp_employee2 
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(SALARY)
FROM EmployeeDemographics emp
Join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle
select *
from #temp_employee2

/* String Function - Trim, LTrim, RTrim, Replace, SubString, Upper , Lower
*/

create table EmployeeErrors(
EmployeeID varchar(50)
, FirstName varchar(50)
, LastName varchar(50)
)

insert into EmployeeErrors values
(1001, 'Jimbo', 'Halbert')
,(   1002, 'Pamela', 'Beasely')
, (1005, 'TOby', 'Flenderson - Fired')

Select *
from EmployeeErrors

--Using Trim, Ltrim, Rtrim

Select EmployeeID
from EmployeeErrors

Select EmployeeID, TRIM(EmployeeID) IDTRIM
from EmployeeErrors


Select EmployeeID, LTRIM(EmployeeID) IDTRIM
from EmployeeErrors


Select EmployeeID, RTRIM(EmployeeID) IDTRIM
from EmployeeErrors

--Using Replace

Select *
from EmployeeErrors

Select LastName, REPLACE(LASTnAME, '- Fired','') as LastNameFixed
from EmployeeErrors

--Using Replace

Select SUBSTRING(FirstName,1,3)
from EmployeeErrors

Select SUBSTRING(FirstName,3,3)
from EmployeeErrors

Select SUBSTRING(FirstName,1,3)
from EmployeeErrors
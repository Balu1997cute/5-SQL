/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [testDB].[dbo].[EmployeeDemographics]

   SELECT COUNT(LastName)
  From EmployeeDemographics

  /*Intermediate SQL*/       /*  */

 /*Inner Joins, Full/left/Right outer Joins */

 
   SELECT *
  From EmployeeDemographics

  
   SELECT *
  From EmployeeSalary

SELECT *
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
From EmployeeDemographics
Full Outer Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
From EmployeeDemographics
Left Outer Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
From EmployeeDemographics
Right Outer Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeDemographics EmployeeID, FirstName, LastName, JobTitle, Salary   /* It shows error */
	From EmployeeDemographics
    Inner Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
	From EmployeeDemographics
    Inner Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
	From EmployeeDemographics
    Inner Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
	From EmployeeDemographics
    Right Outer Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
	From EmployeeDemographics
    Right Outer Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
	From EmployeeDemographics
    Left Outer Join EmployeeSalary
		on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 


SELECT *
From EmployeeDemographics
Full Outer Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
Left Outer Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where FirstName <>'Michael'

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where FirstName <>'Michael'
ORDER BY Salary

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where FirstName <>'Michael'
ORDER BY Salary DESC

SELECT*
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT Jobtitle, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT Jobtitle, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'

SELECT Jobtitle, AVG(Salary)
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

SELECT Jobtitle, AVG(Salary)
From EmployeeDemographics
Inner Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

/* Today's Topic: Union, Union All */

SELECT *
From EmployeeDemographics

SELECT *
From WareHouseEmployeeDemographics

SELECT*
From EmployeeDemographics
Full Outer Join WareHouseEmployeeDemographics
on EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID 

SELECT *
From EmployeeDemographics
SELECT *
From WareHouseEmployeeDemographics

SELECT *
From EmployeeDemographics
UNION
SELECT *
From WareHouseEmployeeDemographics

SELECT *
From EmployeeDemographics
UNION ALL
SELECT *
From WareHouseEmployeeDemographics

SELECT EmployeeID, FirstName, Age
From EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
From EmployeeSalary
Order By EmployeeID

/* Case Statement */

SELECT FirstName, LastName, Age
From EmployeeDemographics
WHERE Age is NOT NULL

SELECT FirstName, LastName, Age,
From EmployeeDemographics
WHERE Age is NOT NULL
order by  Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	Else'Baby'
END
From EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY  Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
	Else'Baby'
END
From EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY  Age


--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age = 38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'Old'
--	Else'Baby'
--END
--From EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY  Age

SELECT FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/* Having Clause */

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle) >1
GROUP BY JobTitle

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle) >1
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) >1

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary)
--HAVING COUNT(JobTitle) >1

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

/* Updating/Deleting Data */

select*
from EmployeeDemographics

update  EmployeeDemographics
set EmployeeID = 1012
where FirstName = 'Holly' And LastName = 'Flax'

select*
from EmployeeDemographics

update  EmployeeDemographics
set Age = 31, Gender = 'Female'
where FirstName = 'Holly' And LastName = 'Flax'

select*
from EmployeeDemographics

update  EmployeeDemographics
set Age = 40
where EmployeeID = 1013

select*
from EmployeeDemographics

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005

select*
from EmployeeDemographics

select*
from EmployeeDemographics
where EmployeeID = 1004 

/* Aliasing*/

select FirstName
from EmployeeDemographics

select FirstName + '' + LastName 
from EmployeeDemographics

select FirstName + '' + LastName AS FullName
from EmployeeDemographics

select Age
from EmployeeDemographics

select Avg(Age)
from EmployeeDemographics

select Avg(Age) AS AvgAge
from EmployeeDemographics


select EmployeeID
from EmployeeDemographics


select Demo.EmployeeID
From EmployeeDemographics AS Demo


select Demo.EmployeeID, Demo.FirstName, Demo.FirstName,
	Sal.JobTitle, Ware.Age
From EmployeeDemographics  Demo
LEFT JOIN EmployeeSalary
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID
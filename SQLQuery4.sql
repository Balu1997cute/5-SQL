/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[JobTitle]
      ,[Salary]
  FROM [testDB].[dbo].[EmployeeSalary]

  /*Basic SQL*/

  SELECT *
  From EmployeeDemographics

  SELECT TOP 5*
  From EmployeeDemographics

  SELECT DISTINCT(EmployeeID)
  From EmployeeDemographics

  SELECT DISTINCT(Gender)
  From EmployeeDemographics

  SELECT COUNT(LastName) 
  From EmployeeDemographics

  SELECT COUNT(LastName) AS LastNameCount
  From EmployeeDemographics

  SELECT *
  From EmployeeSalary

  SELECT MAX(Salary)
  From EmployeeSalary

  SELECT MIN(Salary)
  From EmployeeSalary

  SELECT AVG(Salary)
  From EmployeeSalary

  SELECT *
  From EmployeeSalary

  SELECT * 
  From testDB.dbo.EmployeeSalary

  /* Where Statement
  =, <>, <, >, And, Or, Like, Null, Not Null, In
  */
	
  SELECT *
  From EmployeeDemographics
  WHERE FirstName = 'Jim'

  SELECT *
  From EmployeeDemographics
  WHERE FirstName <> 'Jim'

  SELECT *
  From EmployeeDemographics
  WHERE Age > 30

  SELECT *
  From EmployeeDemographics
  WHERE Age < 32

  SELECT *
  From EmployeeDemographics
  WHERE Age <= 32

SELECT *
From EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
From EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

SELECT *
From EmployeeDemographics
WHERE

SELECT *
From EmployeeDemographics
WHERE LastName Like 'S%'

SELECT *
From EmployeeDemographics
WHERE LastName Like '%S%'

SELECT *
From EmployeeDemographics
WHERE LastName Like 'S%o%'

SELECT *
From EmployeeDemographics
WHERE LastName Like 'S%ott%'

SELECT *
From EmployeeDemographics
WHERE LastName Like 'S%ott%c%'

SELECT *
From EmployeeDemographics
WHERE LastName Like 'S%c%ott%'

SELECT *
From EmployeeDemographics
WHERE 

SELECT *
From EmployeeDemographics
WHERE FirstName is Null

SELECT *
From EmployeeDemographics
WHERE FirstName is Not Null

SELECT *
From EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')

/* Group By, Order By */

SELECT Distinct(Gender)
From EmployeeDemographics

SELECT Gender
From EmployeeDemographics
Group By  Gender


SELECT Gender, COUNT(GENDER)
From EmployeeDemographics
Group By  Gender

SELECT Gender, COUNT(GENDER) /*It is just like a correlation*/
From EmployeeDemographics
Where Age >31
Group By  Gender

SELECT Gender, Age, COUNT(GENDER) /*It is just like a correlation*/
From EmployeeDemographics
Where Age >31
Group By  Gender, Age


SELECT Gender, COUNT(GENDER) As CountGender
From EmployeeDemographics
Where Age >31
Group By  Gender
ORDER BY CountGender DESC

SELECT Gender, COUNT(GENDER) As CountGender
From EmployeeDemographics
Where Age >31
Group By  Gender
ORDER BY Gender ASC

SELECT Gender, COUNT(GENDER) As CountGender
From EmployeeDemographics
Where Age >31
Group By  Gender
ORDER BY Gender 

SELECT *
From EmployeeDemographics
ORDER BY Age

SELECT *
From EmployeeDemographics
ORDER BY Age DESC

SELECT *
From EmployeeDemographics
ORDER BY Age, Gender

SELECT *
From EmployeeDemographics
ORDER BY Age, Gender desc

SELECT *
From EmployeeDemographics
ORDER BY Age desc, Gender desc

SELECT *
From EmployeeDemographics
ORDER BY 4 Desc, 5  Desc

SELECT *
From EmployeeDemographics
ORDER BY 5 Desc


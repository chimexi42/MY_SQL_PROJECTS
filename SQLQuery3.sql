--PLEASE PRACTICE WINDOW FUNCTIONS PLEASE
USE YOUTUBE
SELECT TOP (1000) [ID]
      ,[InvoiceNo]
      ,[StockCode]
      ,[Description]
      ,[Quantity]
      ,[UnitPrice]
      ,[CustomerID]
      ,[Country]
      ,[Date]
      ,[Hour]
  FROM [YOUTUBE].[dbo].[Ecommerce]


SELECT ASCII('A')

SELECT ASCII('2')
SELECT CHAR(97)

SELECT CHARINDEX('V', 'CCV KNOWLEDGE HUB')

SELECT CHARINDEX('C', 'CCV KNOWLEDGE HUB')

SELECT DIFFERENCE('TEST', 'LAPTOP')

SELECT DIFFERENCE('TEST', 'TEST')

SELECT LEFT('CHIMANKPAM', 5)

SELECT LEFT('KAMSIYOCHUKWU', 5)


SELECT LEN('KAMSIYOCHUKWU')

SELECT LEN('KAMSI')

SELECT LEN(LOWER('KAMSIYOCHUKWU'))
SELECT LOWER('KAMSIYOCHUKWU')

SELECT LTRIM('          KAMSIYOCHUKWU')
SELECT RTRIM('KAMSIYOCHUKWU    ')

SELECT NCHAR('400')

SELECT PATINDEX('S%', 'SQLSERVER')

SELECT REPLACE('KNOWLEDGE', 'E', 'C')

SELECT REPLICATE('CHIMA ', 5) AS MYNAME

SELECT REVERSE('CHIMANKPAM')


SELECT RIGHT('CHIMANKPAM', 7)

SELECT RTRIM('CHIMA      ')

SELECT SOUNDEX('SQL'), SOUNDEX('SQL')
SELECT ('CCV')  +  SPACE(1) + 'KNOWLEDGE'

SELECT STR(147,87, 67)

SELECT VALUE FROM string_split('CCV KNOWLEDGE HUB',' ')

SELECT STUFF('KNOWLEDGE', 4,2,'CCV')

SELECT SUBSTRING('SQL SERVER', 1,5)



USE master
SELECT * FROM EmployeeErrors

SELECT EMPLOYEEID, TRIM(EmployeeID) AS IDTIM
FROM EmployeeErrors

SELECT EMPLOYEEID, TRIM(EmployeeID) AS IDTIM,
		LastName, REPLACE(LastName,'- FIRED', '')
FROM EmployeeErrors

SELECT *, SUBSTRING(FirstName,1,3)
FROM EmployeeErrors


SELECT * FROM EmployeeErrors
SELECT * FROM EmployeeDemographics

SELECT * 
FROM EmployeeErrors E
LEFT JOIN EmployeeDemographics DEM
ON E.FirstName = DEM.FirstName

SELECT E.FirstName, DEM.FirstName 
FROM EmployeeErrors E
JOIN EmployeeDemographics DEM
ON SUBSTRING(E.FirstName,1,3) = SUBSTRING(DEM.FirstName,1,3);

SELECT * FROM ECOMMERCE


SELECT COUNT(*) FROM ECOMMERCE

SELECT COUNTRY, SUM(QUANTITY) FROM ECOMMERCE
GROUP BY COUNTRY
ORDER BY SUM(QUANTITY) DESC

WITH NEW_NUMBERING AS
(SELECT *,
ROW_NUMBER() OVER(ORDER BY ID) AS ROWS,
RANK() OVER(ORDER BY ID) AS RNK,
DENSE_RANK() OVER(ORDER BY ID) AS DNS_RNK
FROM ECOMMERCE)

SELECT * FROM NEW_NUMBERING
WHERE ROWS = 5

WITH NEW_NUMBERING AS
(SELECT *,
ROW_NUMBER() OVER(PARTITION BY COUNTRY ORDER BY ID) AS ROWS,
RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS RNK,
DENSE_RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS DNS_RNK
FROM ECOMMERCE)

SELECT * FROM NEW_NUMBERING
WHERE ROWS = 5

WITH NEW_NUMBERING AS
(SELECT *,
ROW_NUMBER() OVER(PARTITION BY COUNTRY ORDER BY ID) AS ROWS,
RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS RNK,
DENSE_RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS DNS_RNK
FROM ECOMMERCE)

SELECT * FROM NEW_NUMBERING
WHERE ROWS = 1 AND RNK = 1 AND DNS_RNK=1


SELECT * FROM ECOMMERCE

SELECT ID, COUNTRY,DESCRIPTION, UNITPRICE, QUANTITY,
ROW_NUMBER() OVER(PARTITION BY COUNTRY ORDER BY ID) AS ROWS,
RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS RNK,
DENSE_RANK() OVER(PARTITION BY COUNTRY ORDER BY ID) AS DNS_RNK,
QUANTITY,
SUM(QUANTITY) OVER(ORDER BY ID)
FROM ECOMMERCE

SELECT MAX(QUANTITY) FROM ECOMMERCE
SELECT MIN(QUANTITY) FROM ECOMMERCE

--USE MAX AND MIN FUCNTIONS TO CALCULATE LATEST AND OLD LOGIN TIME IN SQL TABLES
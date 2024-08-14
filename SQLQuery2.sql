

SELECT * FROM SALES

SELECT * FROM people

SELECT * FROM GEO

SELECT * FROM SALES
WHERE GEO = 'G4' AND Amount > 5000


use ac
SELECT S.* , G.*

FROM SALES S
JOIN GEO G
ON S.Geo = G.GeoID
WHERE G.Geo = 'CANADA'

select * from sales

select *
FROM Employees
WHERE EmployeeID IN (1,2,3,4,5)



select *
FROM Employees
select E.EmployeeID AS EMPLOYEEID,
		E.FullName AS EMPLOYEE_FULLNAME,
		E.Salary AS EMPLOYEE_SALARY,
		M.FullName AS MANAGER_FULLNAME,
		M.Salary AS MANAGER_SALARY,
		M.EmployeeID AS MANAGER_ID
FROM Employees E
JOIN EMPLOYEES M
ON E.ManagerID = M.EmployeeID


select *
FROM Employees








select *
FROM Employees

select E.EmployeeID AS EMPLOYEEID,
		E.FullName AS EMPLOYEE_FULLNAME,
		E.ManagerID AS EMP_MANAGERS_ID,
		E.Salary AS EMPLOYEE_SALARY,
		M.FullName AS MANAGER_FULLNAME,
		M.Salary AS MANAGER_SALARY,
		M.EmployeeID AS MANAGER_ID
FROM Employees E
LEFT JOIN EMPLOYEES M
ON E.ManagerID = M.EmployeeID
WHERE M.Salary > E.Salary

select E.EmployeeID AS EMPLOYEEID,
		E.FullName AS EMPLOYEE_FULLNAME,
		E.ManagerID AS EMP_MANAGERS_ID,
		E.Salary AS EMPLOYEE_SALARY,
		M.FullName AS MANAGER_FULLNAME,
		M.Salary AS MANAGER_SALARY,
		M.EmployeeID AS MANAGER_ID
FROM Employees E
LEFT JOIN EMPLOYEES M
ON E.ManagerID = M.EmployeeID
WHERE M.Salary > E.Salary AND E.FULLNAME LIKE 'J__%'


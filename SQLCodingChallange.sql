-- ## Challenge: Duplicate Email Addresses

SELECT email FROM Employee GROUP BY email HAVING COUNT(email) > 1

-- ## Challenge: Department Highest Salaries

SELECT d.name as DepartmentName, e.name as EmployeeName, e.salary FROM Employees e inner join Department d on e.departmentId = d.departmentId
where e.salary IN (SELECT MAX(salary) from Employees GROUP BY departmentId);
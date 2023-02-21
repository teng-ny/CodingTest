# 각 부서에서 가장 임금을 많이 받는 사람을 찾아라
SELECT d.name AS Department
     , e.name AS Employee
     , e.salary AS Salary
FROM Employee e
INNER JOIN Department d ON e.departmentId=d.id
WHERE (e.departmentId, e.salary) 
IN (
    SELECT departmentId, Max(salary) 
    FROM Employee 
    GROUP BY departmentId)
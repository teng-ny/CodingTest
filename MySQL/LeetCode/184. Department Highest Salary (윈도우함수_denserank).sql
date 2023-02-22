-- SELECT 연산 결과물을 WHERE절에 쓸 수 없으므로 FROM절 서브쿼리로 감싸줌
-- rank() or dense_rank() 사용
SELECT sr.department
     , sr.name AS employee
     , sr.salary
FROM (
    SELECT Employee.name
     , Employee.salary
     , Department.name AS Department
     , RANK() OVER (PARTITION BY Employee.departmentId ORDER BY Employee.salary DESC) AS Salary_rank
    FROM Employee
        INNER JOIN Department ON Employee.departmentId=Department.id) sr
WHERE sr.Salary_rank=1
-- SELECT 연산 결과물을 WHERE절에 쓸 수 없으므로 FROM절 서브쿼리로 감싸줌
SELECT ms.department AS Department
     , ms.name AS Employee
     , ms.salary AS Salary
FROM (
    SELECT Employee.name
        , employee.salary
        , department.name AS department
        , MAX(salary) OVER (PARTITION BY departmentId) AS max_salary
    FROM Employee
        INNER JOIN Department ON Employee.departmentId=Department.id
    ) ms
WHERE ms.salary=ms.max_salary
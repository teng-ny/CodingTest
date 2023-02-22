SELECT r.department
     , r.employee
     , r.salary
FROM (
    SELECT Department.name AS department
        , Employee.name AS Employee
        , Employee.salary
        , DENSE_RANK() OVER (PARTITION BY Department.id ORDER BY Employee.salary DESC) AS rank
    FROM Employee
    INNER JOIN Department ON Employee.departmentId=Department.id) r
WHERE r.rank <= 3
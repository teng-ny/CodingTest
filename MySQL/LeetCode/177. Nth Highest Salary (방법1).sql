CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      -- N이 주어져 있는 상태가 아님! -> 함수에 집어넣으면됨
    SELECT CASE WHEN COUNT(sub.Salary)<N THEN NULL 
                ELSE MIN(sub.Salary)
        END
    FROM (
        SELECT DISTINCT Salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT N
    ) sub
      
  );
END

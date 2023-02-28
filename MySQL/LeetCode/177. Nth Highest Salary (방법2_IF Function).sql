CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      -- N이 주어져 있는 상태가 아님! -> 함수에 집어넣으면됨
    SELECT IF(COUNT(sub.Salary)<N, NULL, MIN(sub.Salary))
    FROM (
        SELECT DISTINCT Salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT N
    ) sub
      
  );
END
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  -- 파라미터를 바로 수정하는 것은 어려움(DECLARE, SET으로 변수를 선언해줌)
  -- DECLARE A INT;
  -- A라는 새로운 변수를 정의해주어도 되고 그러고 싶지 않다면 SET으로 N할당해주어두 됨
  -- SET A = N - 1;
  SET N = N - 1;
  RETURN (
      -- N이 주어져 있는 상태가 아님! -> 함수에 집어넣으면됨
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT N, 1 
      
  );
END
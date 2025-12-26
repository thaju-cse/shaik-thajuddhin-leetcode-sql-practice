CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE M INT;
    SET M = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT (
        SELECT DISTINCT salary
            FROM Employee
            ORDER BY salary desc
            LIMIT 1 offset M
) AS NthHighestSalary


  );
END

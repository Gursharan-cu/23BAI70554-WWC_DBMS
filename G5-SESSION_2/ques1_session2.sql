-- G5_23BAI70147_Chandan_kumar_SESSION2
CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  IF N < 1 THEN
    RETURN;
  END IF;

  RETURN QUERY (
    SELECT (
        SELECT DISTINCT e.salary
        FROM Employee e
        ORDER BY e.salary DESC
        LIMIT 1 OFFSET N-1
    )
  );
END;
$$ LANGUAGE plpgsql;

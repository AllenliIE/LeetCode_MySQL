//Blog:http://52.198.119.162/leetcode-mysql-177-nth-highest-salary/

-- <strong>Solution:</strong>
-- 1. 建立一個函式叫做 getNthHighestSalary(N INT)。
-- 2. 設定 N = N - 1，代表第 N 個。(搭配LIMIT OFFSET使用，原為略過 N 個數值，改成抓出第 N 個(N - 1))
-- 3. 篩選出在 Employee table 中，第 N 個開始取 1 個。

-- <strong>Code.1:</strong>
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT(
          SELECT DISTINCT salary FROM Employee
          ORDER BY salary DESC
          LIMIT 1 OFFSET N
      )
  );
END
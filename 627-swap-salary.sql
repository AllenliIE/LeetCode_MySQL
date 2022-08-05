//Blog: http://52.198.119.162/2022/07/20/leetcode-mysql-627-swap-salary/

-- <strong>Solution:</strong>
-- 1. 更新 Salary 的 table
-- 2. 設定「CASE WHEN」判定當 sex = 'f'，則改為'm'，不是'f'的改為'f'。
-- 3. 顯示 Salary 的 table

-- <strong>Code1:</strong>
UPDATE Salary 
SET sex = (CASE WHEN sex = 'f' then 'm' ELSE 'f' END);
SELECT * FROM Salary;
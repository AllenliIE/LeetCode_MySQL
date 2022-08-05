//Blog:http://52.198.119.162/2022/07/25/leetcode-mysql-176-second-highest-salary/

-- Solution:
-- 1. 只有一個標題 SecondHighestSalary
-- 2. 選擇沒有重複的 Salary，且 Employee 表格需降冪排序。
-- 3. 從第一個之後取一個(也就是第二高的)

-- <strong>Code1:</strong>
SELECT 
	(SELECT DISTINCT Salary
		FROM Employees 
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1
	) AS SecondhighestSalary;
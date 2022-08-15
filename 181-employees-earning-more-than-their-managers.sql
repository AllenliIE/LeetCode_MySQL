//Blog:  http://52.198.119.162/leetcode-mysql-181-employees-earning-more-than-their-managers/

-- <strong>Solution:</strong>
-- 1. 選擇標題 t1.name 為 Employee。
-- 2. 將 Employee 拆為 t1, t2 兩張表進行比較。
-- 3. 以 t1.managerId 為基準，且符合 t2.id 中有 salary 比老闆高者。

-- <strong>Code.1:</strong>
SELECT t1.name AS Employee
	FROM Employee AS t1
LEFT JOIN Employee AS t2
	ON t1.managerId = t2.id
WHERE t1.salary > t2.salary;
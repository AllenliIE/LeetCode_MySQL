//Blog: http://52.198.119.162/leetcode-mysql-184-department-highest-salary/

-- <strong>Solution:</strong>
-- 1. 選擇標題 t2.name 為 Department，t1.name 為 Employee，t1.salary 為 Salary。
-- 2. 分別建立 Employee 為 t1，Department 為 t2。
-- 3. 以部門id為基準，尋找 salary 最高的員工。

<strong>Code.1:</strong>
SELECT t2.name AS Department,
	t1.name As Employee,
    t1.salary As Salary
FROM Employee AS t1
LEFT JOIN Department AS t2
	ON t1.departmentId = t2.id
WHERE (t2.id, t1.salary) IN 
	(SELECT departmentId,
		MAX(salary)
        FROM Employee
        GROUP BY departmentId);
//Blog: http://52.198.119.162/leetcode-mysql-185-department-top-three-salaries/

-- <strong>Solution:</strong>
-- 1. 選擇標題 t2.name 為 Department，t1.name 為 Employee，t1.salary 為 Salary。
-- 2. 分別建立 Employee 為 t1，Department 為 t2。
-- 3. 尋找 salary 不重複數值的次數為 6，
--    然後將複製相同的 salary 進行比對， 
--    同時將部門進行分類，並找出各部門該員工收入個數不大於 3 的所有員工。
-- <pre style='background-color:#ggg'>
-- +----+-------+--------+--------------+------------------+-----------------+
-- | id | name  | salary | departmentId | *DISTINCT(COUNT) | *>salary(COUNT) |
-- +----+-------+--------+--------------+------------------+-----------------+
-- | 1  | Joe   | 85000  | 1            | 1                | 1               |
-- | 4  | Max   | 90000  | 1            | 1                | 0               | 
-- | 5  | Janet | 69000  | 1            | 1                | 3               |
-- | 6  | Randy | 85000  | 1            | 0                | 1               |
-- | 7  | Will  | 70000  | 1            | 1                | 2               |
-- +----+-------+--------+--------------+------------------+-----------------+
-- *DISTINCT(COUNT) = 4
-- *>salary(COUNT) < 3 = 90000, 85000, 85000, 70000

-- +----+-------+--------+--------------+------------------+-----------------+
-- | id | name  | salary | departmentId | *DISTINCT(COUNT) | *>salary(COUNT) |
-- +----+-------+--------+--------------+------------------+-----------------+
-- | 2  | Henry | 80000  | 2            | 1                | 0               |
-- | 3  | Sam   | 60000  | 2            | 1                | 1               |
-- +----+-------+--------+--------------+------------------+-----------------+
-- *DISTINCT(COUNT) = 2
-- *>salary(COUNT) < 3 = 80000, 60000
-- </pre>

-- <strong>Code.1:</strong>
SELECT t2.name AS Department,
	t1.name AS Employee,
    t1.salary AS Salary
    FROM Employee AS t1
LEFT JOIN Department AS t2
	ON t1.departmentId = t2.id
WHERE (SELECT COUNT(DISTINCT salary) 
		FROM Employee
        WHERE salary > t1.salary
			AND DepartmentId = t2.id) < 3
		ORDER BY t2.name, t1.salary DESC;   
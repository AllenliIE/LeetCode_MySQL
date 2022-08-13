//Blog: http://52.198.119.162/leetcode-mysql-1965-employees-with-missing-information/

-- <strong>Solution:</strong>
-- 1. 確認來自 Employees 的 employee_id 且不存在 Salaries。
-- 2. 合併 Employees 與 Salaries 兩個 table。
-- 3. 確認來自 Salaries 的 employee_id 且不存在 Employees。
-- 4. 依照 employee_id 進行排序。

-- <strong>Code.1:</strong>
SELECT employee_id FROM Employees 
WHERE employee_id NOT IN(SELECT employee_id FROM Salaries)
UNION
SELECT employee_id FROM Salaries 
WHERE employee_id NOT IN(SELECT employee_id FROM Employees)
ORDER BY employee_id;

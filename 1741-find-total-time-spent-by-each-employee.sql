//Blog: http://52.198.119.162/2022/08/05/leetcode-mysql-1741-find-total-time-spent-by-each-employee/

-- <strong>Solution:</strong>
-- 1. 選擇標題 event_day 為 day。
-- 2. 選擇標題 emp_id。
-- 3. 選擇標題 total_time 為 (out_time - in_time)。
-- 4. 來自 Employees 的 table。
-- 5. 以 event_day 與 emp_id 為群組。
-- 6. 以 event_day 做排序。

-- <strong>Code1:</strong>
SELECT event_day AS day,
	emp_id,
    SUM(out_time - in_time) AS total_time
    FROM Employees
GROUP BY event_day, emp_id
ORDER BY event_day;
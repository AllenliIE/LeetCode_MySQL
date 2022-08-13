//Blog:http://52.198.119.162/leetcode-mysql-1873-calculate-special-bonus/

-- <strong>Solution:</strong>
-- 1. 選擇標題「employee_id」、「bonus」
-- 2. 運用「CASE WHEN」判定符合兩個條件其中一下時，bonus為 0 ，否則為正常的salary。
--   - name 開頭為 'M%' (用%來允許後方可有多個字元)
--   - employee_id為偶數 (使用 %2 = 0 來排除奇數)
-- 3. 來自於 Employees 的 table
-- 4. 將「employee_id」進行排序

-- <strong>Code:</strong>
SELECT 
  employee_id,
  (CASE WHEN (name LIKE 'M%' 
             OR employee_id % 2 = 0) THEN 0 ELSE salary END) AS 'bonus'
  FROM Employees
ORDER By employee_id;
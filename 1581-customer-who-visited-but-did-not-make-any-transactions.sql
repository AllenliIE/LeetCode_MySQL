//Blog: http://52.198.119.162/2022/07/26/leetcode-mysql-175-combine-two-tablesㄩㄡ/

-- <strong>Solution:</strong>
-- 1. 選擇標題 customer_id。
-- 2. 計算 customer_id 的次數。
-- 3. 來自 Visits 的表中，且 visits_id 沒有在 Transactions(排除重複) 中。

-- <strong>Code:</strong>
SELECT 
    customer_id,
    COUNT(*) AS count_no_trans  
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id
ORDER BY count_no_trans DESC;
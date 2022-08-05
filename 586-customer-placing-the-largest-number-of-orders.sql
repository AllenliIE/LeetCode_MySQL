//Blog: http://52.198.119.162/2022/08/04/leetcode-mysql-586-customer-placing-the-largest-number-of-orders/

-- <strong>Solution:</strong>
-- 1. 選擇標題 customer_number。
-- 2. 來自 Orders 的 table。
-- 3. 以 customer_number 為群組。
-- 4. 以 customer_number 的次數做降冪排序。
-- 5. 取該排列的第一個順位。

-- <strong>Code1:</strong>
SELECT 
	customer_number
	FROM Orders
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1 OFFSET 0;
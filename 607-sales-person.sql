//Blog: http://52.198.119.162/2022/08/01/leetcode-mysql-607-sales-person/

-- <strong>Solution:</strong>
-- 1. 選擇標題 SalesPerson 中的 name 為 name。
-- 2. 且 SalePerson 的 sales_id 不存在，以下：
-- 3. (Orders 的 sales_id 中，含有在 Company 的 'RED' 紀錄)。 
-- <pre style='background-color:#ggg'>
-- //orders.sales_id data
-- sales_id = (1, 4)
-- com_id   = (1, 1)
-- </pre>

SELECT s.name AS name
    FROM SalesPerson AS s
WHERE s.sales_id NOT IN 
	(SELECT o.sales_id
		FROM orders AS o
			LEFT JOIN Company AS c
				ON o.com_id = c.com_id
		WHERE c.name = 'RED');
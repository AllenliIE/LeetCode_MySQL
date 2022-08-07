//Blog: http://52.198.119.162/2022/08/06/leetcode-mysql-1084-sales-analysis-iii/

-- <strong>Solution:</strong>
-- 1. 選擇標題 p.product_id, p.product_name。
-- 2. 來自 Product 的 table。
-- 3. 加入 Sales 的 table。
-- 4. 將 p.product_id 與 s.product_id 做連結。
-- 5. 以 p.product_id 為群組。
-- 6. 且最大日期小於'2019-03-31'，同時最小日期大於'2019-01-01'。

-- <strong>Code.1:</strong>
SELECT p.product_id, p.product_name
	FROM Product AS p
    LEFT JOIN Sales AS s
		ON p.product_id = s.product_id
    GROUP BY p.product_id
    HAVING MAX(s.sale_date) <= '2019-03-31' AND MIN(s.sale_date) >= '2019-01-01';
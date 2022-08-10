//Blog: http://52.198.119.162/2022/07/23/leetcode-mysql-1795-rearrange-products-table/

-- <strong>Solution:</strong>
-- 1. 選擇 * 列表。
-- 2. 篩選 product_id、store的名稱、store的價錢。
-- 3. 且 price 不為 NULL。

<strong>Code.1:</strong>
SELECT * FROM 
(	
    SELECT product_id, 'store1' store, store1 AS price FROM Products
    UNION
    SELECT product_id, 'store2' store, store2 AS price FROM Products
    UNION
    SELECT product_id, 'store3' store, store3 AS price FROM Products
) AS T
WHERE price IS NOT NULL
ORDER BY product_id;
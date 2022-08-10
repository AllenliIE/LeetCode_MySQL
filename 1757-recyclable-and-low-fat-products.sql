//Blog: http://52.198.119.162/2022/07/19/leetcode-mysql-1757-recyclable-and-low-fat-products/

-- <strong>Solution:</strong>
-- 1. 選擇標題「product_id」
-- 2. 來自於 Products 的 table
-- 3. 設定條件「low_fats = 'Y'」or「recyclable = 'Y'」

-- <strong>Code:</strong>
SELECT product_id
	FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
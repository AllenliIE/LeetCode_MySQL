//Blog:http://52.198.119.162/2022/07/20/leetcode-mysql-183-customers-who-never-order/

-- <strong>Solution:</strong>
-- 1. 選擇標題「name」為「Customers」
-- 2. 來自於 Customers 的 table
-- 3. 加入並以 Orders 的 table 為主
-- 4. 且 「Orders.customerId = Customers.id」
-- 3. 設定「不再Orders.customerId的訂單」
-- (ex.LEFT JOIN 會返回左側資料表中所有資料列，如果沒有匹配的資料值，則顯示為 NULL。)

SELECT name AS Customers
    FROM Customers
    LEFT JOIN Orders 
        ON Orders.customerId = Customers.id
WHERE Orders.customerId IS NULL;
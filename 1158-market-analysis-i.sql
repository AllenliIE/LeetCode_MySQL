//Blog: http://52.198.119.162/2022/08/05/leetcode-mysql-1158-market-analysis-i/

-- <strong>Solution:</strong>
-- 1. 確認標題 u.user_id 為 buyer_id 。
-- 2. 確認標題 u.join_date 為 join_date。
-- 3. 確認標題 order_date 中日期年份為'2019'的次數加總，為 orders_in_2019。
-- 4. 來自 Users 的 table 為 u。
-- 5. 加入 Orders 的 table 為 o。
-- 6. 將 u.user_id 與 o.buyer_id 做連結。
-- 7. 以 u.user_id 為群組。

-- <strong>Code.1:</strong>
SELECT u.user_id AS buyer_id,
	MAX(u.join_date) AS join_date,
    SUM(IF(o.order_date LIKE '2019-%', 1, 0)) AS orders_in_2019
    FROM Users AS u
LEFT JOIN Orders as o
	ON u.user_id = o.buyer_id
GROUP BY u.user_id;
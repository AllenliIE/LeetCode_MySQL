//Blog: http://52.198.119.162/2022/07/22/leetcode-mysql-1484-group-sold-products-by-the-date/

-- <strong>Solution:</strong>
-- 1. 確認標題 sell_date 。
-- 2. 確認標題 num_sold，計算不重複的商品數量 。
-- 3. 確認標題 products，串連該時間群組的商品名稱。
-- 4. 以 sell_date 作為排序。

-- <strong>Code.1:</strong>
SELECT
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;

-- <strong>Code.2:</strong>
SELECT 
  sell_date,
  COUNT(product) AS num_sold,
  GROUP_CONCAT(product ORDER BY product) AS products
FROM (SELECT DISTINCT * FROM Activities) AS Activities
GROUP BY sell_date
ORDER BY sell_date;
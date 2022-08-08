//Blog: http://52.198.119.162/2022/08/06/leetcode-mysql-1587-bank-account-summary-ii/

-- <strong>Solution:</strong>
-- 1. 選擇標題 u.name 為 name。
-- 2. 選擇標題 將 t.amount 加總後，為 balance
-- 3. 來自 Users 的 table 為 u。
-- 4. 加入 Transactions 的 table 為 t。
-- 5. 且將 u.account 與 t.account 做連結。
-- 6. 找出 balance 大於等於 10000。

-- <strong>Code.1:</strong>
SELECT u.name AS name,
	SUM(t.amount) AS balance
    FROM Users AS u
    LEFT JOIN Transactions AS t
		  ON u.account = t.account
GROUP BY u.name
HAVING balance >= 10000;
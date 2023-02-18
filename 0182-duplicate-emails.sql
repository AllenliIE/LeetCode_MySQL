//Blog: http://52.198.119.162/2022/08/06/leetcode-mysql-182-duplicate-emails/

-- <strong>Solution:</strong>
-- 1. 確認標題 email 為 Email 。
-- 2. 來自 Person 的 table。
-- 3. 以 email 為群組。
-- 4. 有 Email 次數大於1。

-- <strong>Code.1:</strong>
SELECT email AS Email
  FROM Person
GROUP BY email
HAVING COUNT(Email) > 1;

-- <strong>Code.2:</strong>
SELECT email AS Email
  FROM Person
GROUP BY email
HAVING COUNT(*) > 1;
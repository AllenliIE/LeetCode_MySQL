//Blog: http://52.198.119.162/2022/07/21/leetcode-mysql-1667-fix-names-in-a-table/

-- <strong>Solution:</strong>
-- 1. 選擇 user_id , name的左邊第一個字元大寫，加上 name 的第二個字元之後皆為小寫。
-- 2. 來自 Users 的 table。
-- 3. 以 user_id進行排序。

-- <strong>Code.1:</strong>
SELECT 
  user_id,
  CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS 'name'
FROM Users 
ORDER BY user_id;

-- <strong>Code.2:</strong>
SELECT 
  user_id,
  CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, LENGTH(name) - 1))) AS 'name'
FROM Users
ORDER BY user_id;

-- Remark:
-- length.('Alice') = 5
-- UPPER(left('Alice', 1)) = 'A'
-- LOWER(RIGHT('Alice', 5 - 1)) = 'lice'

//Blog:http://52.198.119.162/2022/07/20/leetcode-mysql-584-find-customer-referee/

-- <strong>Solution:</strong>
-- 1. 選擇標題「name」
-- 2. 來自於 Customer 的 table
-- 3. 設定條件「referee_id 不等於 2」
-- (ex.注意需列入null的情況)

-- <strong>Code.1:</strong>
SELECT name
    FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;

-- <strong>Code.2:</strong>
SELECT name
    FROM Customer
WHERE referee_id IS NULL OR referee_id <> 2;
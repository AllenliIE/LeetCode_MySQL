//Blog: http://52.198.119.162/leetcode-mysql-626-exchange-seats/

-- <strong>Solution:</strong>
-- 1. 選擇標題 id 為
-- <pre style='background-color:#ggg'>
-- - id 是偶數，則 id 順序往上一格。
-- - id 是奇數，且 id 不是 Seat 表中最大的數值，則 id 的順序往下一格。
-- - 皆不是，則保持原樣。
-- </pre>
-- 2. 選擇標題 student
-- 3. 來自 Seat 的 table。
-- 4. 以 id 做升冪排序(ASC)。

-- <strong>Code.1:</strong>
SELECT 
    (CASE WHEN MOD(id, 2) = 0 THEN id - 1
        WHEN MOD(id, 2) = 1 AND id != (SELECT MAX(id) FROM Seat) THEN id + 1
    ELSE id
    END) AS id,
	student 
FROM Seat
ORDER BY id; 
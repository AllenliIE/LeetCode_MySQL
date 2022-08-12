//Blog: http://52.198.119.162/2022/08/10/leetcode-mysql-180-consecutive-numbers/

-- <strong>Solution:</strong>
-- 1. 選擇標題 ConsecutiveNums 為不重複的 num。
-- 2. 將 Logs 拆分成三個 t1, t2, t3 的表。
-- 3. 分別符合以下條件：
-- <pre style='background-color:#ggg'>
-- - id 須為連號：
-- A:B:C = 1:2:3
-- ((A + 1) = B) && ((B + 1) = C)

-- - num 皆須相同：
-- A:B:C = 1:1:1
-- (A = B) && (B = C)
-- </pre>

-- <strong>Code.1:</strong>
SELECT DISTINCT(t1.num) AS ConsecutiveNums
    FROM Logs AS t1, Logs AS t2, Logs AS t3
WHERE t1.id + 1 = t2.id 
    AND t2.id + 1 = t3.id 
    AND t1.num = t2.num 
    AND t2.num = t3.num;
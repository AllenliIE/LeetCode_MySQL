//Blog:http://52.198.119.162/2022/07/29/leetcode-mysql-197-rising-temperature/

-- <strong>Solution:</strong>
-- 1. 選擇標題 Weather 中的 id。
-- 2. 假設有兩個相同的 Weather 表。
-- 3. 當第一張表的溫度大於第二張表時，且日期相差一天。

-- <strong>Code1:</strong>
SELECT w1.id 
	FROM Weather AS w1, Weather AS w2
WHERE w1.temperature > w2.temperature 
  AND DATEDIFF(w1.recordDate, w2.recordDate) = 1;
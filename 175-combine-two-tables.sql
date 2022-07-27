//Blog: http://52.198.119.162/2022/07/25/leetcode-mysql-175-combine-two-tables/

-- Solution:
-- 1. 選擇標題 Person table 的 firstName, lastName。
-- 2. 選擇標題 Address table 的 city, state。
-- 3. 將符合的資料放在左側，而右側資料表沒有符合的值為空值。

SELECT 
    p.firstName, 
    p.lastName,
    a.city,
    a.state
    FROM Person AS p
    LEFT JOIN Address AS a
		ON p.personId = a.personId;


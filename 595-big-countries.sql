//Blog: http://52.198.119.162/2022/07/18/leetcode-mysql-595-big-countries/

-- <strong>Solution:</strong>
-- 1. 選擇標題「name」、「population」、「area」
-- 2. 來自於 World 的 table
-- 3. 設定條件「area >= 3000000」or「population >= 25000000」

-- <strong>Code1:</strong>
SELECT name, population, area 
	FROM World
Where area >= 3000000 OR population >= 25000000;
//Blog: http://52.198.119.162/leetcode-mysql-620-not-boring-movies/

-- <strong>Solution:</strong>
-- 1. 選擇標題 id, movie, description, rating。
-- 2. 來自 Cinema 的 table。
-- 3. 尋找 description 的字符中前後沒有'boring'。
-- 4. 且 id % 2 的餘數為 1。(找奇數)
-- 5. 依照 rating 做降冪排序。

-- <strong>Code.1:</strong>
SELECT id, movie, description, rating
    FROM Cinema
    WHERE (description NOT LIKE 'boring%' OR '%boring')
		AND id % 2 = 1
ORDER BY rating DESC;
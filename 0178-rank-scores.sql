//Blog: http://52.198.119.162/leetcode-mysql-178-rank-scores/


-- <strong>Solution:</strong>
-- 1. 選擇標題 t1.score。
-- 2. 選擇標題 rank ，為 Scores 中建立 t2 的表單，且選取兩者表單的分數，如有相同則計算不重複的次數。
-- <pre style='background-color:#ggg'>
-- example:

-- score1 = [5, 6, 6, 8]
-- score2 = [5, 6, 6, 8]

-- COUNT(DISTINCT(score2 >= score1))
--        = [3, 2, 2, 1]
-- ---------------------------------
-- 分別為  :  8  8  8  8
--           6  6  6
--           5
-- </pre>
-- 3. 來自 Scores 中命名為 t1 的表單
-- 4. 依照 t1.score 降冪排序。

-- <strong>Code.1:</strong>
SELECT t1.score,
    (SELECT COUNT(DISTINCT(t2.score))
        FROM Scores AS t2
        WHERE t2.score >= t1.score) AS `rank`
FROM Scores AS t1
ORDER BY t1.score DESC;

-- <strong>Code.2:</strong>
SELECT score, 
	DENSE_RANK() OVER(ORDER BY score DESC) AS `rank`
FROM Scores;
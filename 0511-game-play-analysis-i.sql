//Blog: http://52.198.119.162/2022/08/04/leetcode-mysql-511-game-play-analysis-i/

-- <strong>Solution:</strong>
-- 1. 選擇標題 player_id。
-- 2. 選擇標題 first_login 為最小的 event_date。
-- 3. 以 player_id 為群組。

-- <strong>Code1:</strong>
SELECT player_id,
	MIN(event_date) AS first_login
    FROM Activity
GROUP BY player_id;

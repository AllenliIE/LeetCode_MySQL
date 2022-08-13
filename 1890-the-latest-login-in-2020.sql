//Blog: http://52.198.119.162/leetcode-mysql-1890-the-latest-login-in-2020/

-- <strong>Solution:</strong>
-- 1. 選擇標題 user_id。
-- 2. 選擇標題 last_stamp 為最大的 time_stamp 時間。
-- 3. 來自 Logins 的 table。
-- 4. 選取 time_stamp 前四碼為 '2020'。
-- 5. 以 user_id 為群組。

-- <strong>Code1:</strong>
SELECT user_id, 
	MAX(time_stamp) AS last_stamp
    FROM Logins
WHERE LEFT(time_stamp, 4) = '2020'
GROUP BY user_id;
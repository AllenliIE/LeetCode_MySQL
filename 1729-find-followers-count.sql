//Blog: http://52.198.119.162/2022/08/03/leetcode-mysql-1729-find-followers-count/

-- <strong>Solution:</strong>
-- 1. 選擇標題 user_id
-- 2. 選擇 follower_id 的次數為 followers_count
-- 3. 以 user_id 為群組
-- 4. 以 user_id 為排序

-- <strong>Code1:</strong>
SELECT user_id,
	COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
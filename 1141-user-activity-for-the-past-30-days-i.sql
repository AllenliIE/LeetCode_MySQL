//Blog: http://52.198.119.162/2022/08/02/leetcode-mysql-1141-user-activity-for-the-past-30-days-i/

-- <strong>Solution:</strong>
-- 1. 選擇標題 activity_date 為 day。
-- 2. 選擇標題 不重複的user_id 為 active_users。
-- 3. 來自 Activity 的 table，且以 activity_date 的日期為群組。
-- 4. 有符合在 2019-07-27 ~ 2019-06-28 日期之間的 activity_date。

SELECT 
	activity_date AS day,
	COUNT(DISTINCT user_id) AS active_users
    FROM Activity
GROUP BY activity_date
HAVING DATE (activity_date) BETWEEN '2019-06-28' AND '2019-07-27';
//Blog: http://52.198.119.162/leetcode-mysql-262-trips-and-users/

-- <strong>Solution:</strong>
-- 1. 選擇標題 tb1.request_at 為 DAY。
-- 2. 選擇標題 Cancellation Rate 為「符合'cancelled%'」的平均數，且取小數點到第二位，同時 banned 不能為 Yes。
-- 3. 分別使用兩個 INNER JOIN 來將存在 Users 名單中的客戶或司機進行連結。
-- 4. 確認日期在 "2013-10-01 ~ 2013-10-03" 之間。
-- 5. 以 DAY 為群組及排序。

-- ex. 使用雙 INNER JOIN 的目的：
-- <pre style='background-color:#ggg'>
-- Trips table:
-- +------+-----------+-----------+---------+---------------------+------------+
-- | id   | client_id | driver_id | city_id | status              | request_at |
-- +------+-----------+-----------+---------+---------------------+------------+
-- | 1111 | 1         | 10        | 1       | completed           | 2013-10-01 |
-- +------+-----------+-----------+---------+---------------------+------------+

-- Users table:
-- +----------+--------+--------+
-- | users_id | banned | role   |
-- +----------+--------+--------+
-- | 1        | No     | client |
-- | 10       | Yes    | driver |
-- +----------+--------+--------+

-- ex. 以上例子中，client_id 與 driver_id 分別符合 1 和 10，但是因其中 driver 判定為禁止，故該筆資料應完全排除。
-- </pre>

-- <strong>Code.1:</strong>
SELECT tb1.request_at AS DAY,
    ROUND(AVG(IF(tb1.status LIKE 'cancelled%', 1, 0)), 2) AS 'Cancellation Rate'
	FROM Trips AS tb1
    INNER JOIN Users AS tb2
        ON tb1.client_id = tb2.users_id AND tb2.banned = 'No'
    INNER JOIN Users AS tb3
        ON tb1.driver_id = tb3.users_id AND tb3.banned = 'No'
WHERE tb1.request_at BETWEEN "2013-10-01" AND "2013-10-03"
GROUP BY Day
ORDER BY Day;
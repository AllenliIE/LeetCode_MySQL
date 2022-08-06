//Blog: http://52.198.119.162/2022/08/05/leetcode-mysql-1407-top-travellers/

-- <strong>Solution:</strong>
-- 1. 選擇標題 u.name 為 name。
-- 2. 選擇標題 travelled_distance 為 distance的加總，且 NULL 為0。
-- 3. 來自 Users 的 table。
-- 4. 連結 Rides 的 table，且 u.id = r.user_id。
-- 5. 以 n.name 為群組。
-- 6. 以 travelled_distance 為降冪排序，如相同則以 u.name 作升冪排序。

-- <strong>Code1:</strong>
SELECT u.name AS name,
	IFNULL(SUM(r.distance), 0) AS travelled_distance
FROM Users AS u
LEFT JOIN Rides AS r
	ON u.id = r.user_id
GROUP BY n.name
ORDER BY travelled_distance DESC, u.name ASC;
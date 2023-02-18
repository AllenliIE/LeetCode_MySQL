//Blog: http://52.198.119.162/leetcode-mysql-601-human-traffic-of-stadium/

-- <strong>Solution:</strong>
-- 1. 選擇標題分別為 t1.id, t1.visit_date, t1.people。
-- 2. 來自 Stadium 的 table，三個相同的表互相比較。
-- 3. 確保三個表中的人數皆大於100。
-- 4. 確保連續三個數值，且將條件以[*, @, #]來代表成立範圍。
-- <pre style='background-color:#ggg'>
-- Stadium table:
-- +------+------------+-----------+---------+---------+---------+
-- | id   | visit_date | people    | t1      | t2      | t3      |
-- +------+------------+-----------+---------+---------+---------+
-- | 1    | 2017-01-01 | 10        | NULL    | NULL    | NULL    |
-- | 2    | 2017-01-02 | 109       | 109     | 109     | 109     |
-- | 3    | 2017-01-03 | 150       | 150     | 150     | 150     |
-- | 4    | 2017-01-04 | 99        | NULL    | NULL    | NULL    |
-- | 5*   | 2017-01-05 | 145       | 145*@   | 145@    | 145     |
-- | 6*@  | 2017-01-06 | 1455      | 1445*@# | 1445*   | 1445#   |
-- | 7@#  | 2017-01-07 | 199       | 199*@#  | 199*#   | 199*@   |
-- | 8#   | 2017-01-09 | 188       | 188*#   | 188     | 188*    |
-- +------+------------+-----------+---------+---------+---------+
-- </pre>

-- <strong>Code.1:</strong>
SELECT DISTINCT t1.id, t1.visit_date, t1.people
	FROM Stadium AS t1, Stadium AS t2, Stadium AS t3
WHERE (t1.people >= 100 AND t2.people >= 100 AND t3.people >= 100)
	AND ((t1.id + 1 = t2.id AND t1.id + 2 = t3.id) OR
	     (t1.id - 1 = t2.id AND t1.id + 1 = t3.id) OR
       (t1.id - 1 = t2.id AND t1.id - 2 = t3.id))
ORDER BY id;
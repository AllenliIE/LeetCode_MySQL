//Blog: http://52.198.119.162/leetcode-mysql-1179-reformat-department-table/

-- <strong>Solution:</strong>
-- 1. 選擇標題 id。
-- 2. 將符合 month = ['Jan', 'Feb', 'Mar', 'Apr',
--                   'May', 'Jun', 'Jul', 'Aug',
--                   'Sep', 'Oct', 'Nov', 'Dec']
--    返回加總後的 revenue。
-- 3. 來自 Department 的 table 。
-- 4. 以 id 進行排序。

-- <strong>Code.1 CASE WHEN:</strong>
SELECT id,
    SUM(CASE WHEN (month = 'Jan') THEN revenue ELSE NULL END) AS Jan_Revenue,
    SUM(CASE WHEN (month = 'Feb') THEN revenue ELSE NULL END) AS Feb_Revenue,
    SUM(CASE WHEN (month = 'Mar') THEN revenue ELSE NULL END) AS Mar_Revenue,
    SUM(CASE WHEN (month = 'Apr') THEN revenue ELSE NULL END) AS Apr_Revenue,
    SUM(CASE WHEN (month = 'May') THEN revenue ELSE NULL END) AS May_Revenue,
    SUM(CASE WHEN (month = 'Jun') THEN revenue ELSE NULL END) AS Jun_Revenue,
    SUM(CASE WHEN (month = 'Jul') THEN revenue ELSE NULL END) AS Jul_Revenue,
    SUM(CASE WHEN (month = 'Aug') THEN revenue ELSE NULL END) AS Aug_Revenue,
    SUM(CASE WHEN (month = 'Sep') THEN revenue ELSE NULL END) AS Sep_Revenue,
    SUM(CASE WHEN (month = 'Oct') THEN revenue ELSE NULL END) AS Oct_Revenue,
    SUM(CASE WHEN (month = 'Nov') THEN revenue ELSE NULL END) AS Nov_Revenue,
    SUM(CASE WHEN (month = 'Dec') THEN revenue ELSE NULL END) AS Dec_Revenue
FROM Department GROUP By id;

-- <strong>Code.2 IF:</strong>
SELECT id,
    SUM(IF(month = 'Jan', revenue, NULL)) AS Jan_Revenue,
    SUM(IF(month = 'Feb', revenue, NULL)) AS Feb_Revenue,
    SUM(IF(month = 'Mar', revenue, NULL)) AS Mar_Revenue,
    SUM(IF(month = 'Apr', revenue, NULL)) AS Apr_Revenue,
    SUM(IF(month = 'May', revenue, NULL)) AS May_Revenue,
    SUM(IF(month = 'Jun', revenue, NULL)) AS Jun_Revenue,
    SUM(IF(month = 'Jul', revenue, NULL)) AS Jul_Revenue,
    SUM(IF(month = 'Aug', revenue, NULL)) AS Aug_Revenue,
    SUM(IF(month = 'Sep', revenue, NULL)) AS Sep_Revenue,
    SUM(IF(month = 'Oct', revenue, NULL)) AS Oct_Revenue,
    SUM(IF(month = 'Nov', revenue, NULL)) AS Nov_Revenue,
    SUM(IF(month = 'Dec', revenue, NULL)) AS Dec_Revenue
FROM Department GROUP By id;    
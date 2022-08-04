//Blog: http://52.198.119.162/2022/07/27/leetcode-mysql-1148-article-views-i/

-- <strong>Solution:</strong>
-- 1. 選擇標題 不重複的 author_id
-- 2. 來自 Views 的 table
-- 3. 且符合參訪人的紀錄


-- <strong>Code1:</strong>
-- # DISTINCT
SELECT DISTINCT author_id AS id
	FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

-- <strong>Code2:</strong>
-- # GROUP BY
SELECT author_id AS id
	FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id ASC;

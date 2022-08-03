//Blog: http://52.198.119.162/2022/07/24/leetcode-mysql-608-tree-node/

-- <strong>Solution:</strong>
-- 1. 選擇標題 id。
-- 2. 選擇標題 Type
--   - 當 p_id 是 NULL 時，顯示 Root。
--   - 當 id 在 Tree 表格中過濾與 p_id 重複的值，顯示 Inner。
--   - 當不符合以上狀況時，顯示 Leaf。
-- 3. 來自 Tree 的 table。

-- <strong>Code.1-1:</strong>
SELECT 
	id,
    (CASE WHEN(p_id IS NULL) THEN 'Root'
	WHEN id IN(SELECT DISTINCT p_id FROM Tree1) THEN 'Inner'
        ELSE 'Leaf' END) AS Type
FROM Tree1;

-- <strong>Code.1-2:</strong>
SELECT 
        id,
	IF(ISNULL(p_id),'Root',IF(id IN(SELECT DISTINCT p_id FROM Tree),'Inner','Leaf')) AS Type
    FROM Tree
    ORDER BY id;

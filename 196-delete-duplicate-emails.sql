//Blog:http://52.198.119.162/2022/07/20/leetcode-mysql-196-delete-duplicate-emails/

-- <strong>Solution:</strong>
-- 1. 刪除 Person 的 table1(tb1)
-- 2. 來自「Person => tb1」、「Person => tb2」
-- 3. 取出 email 相同，且 id 較大的資料。

-- <strong>Code.1:</strong>
-- JOIN ON
DELETE tb1 
  FROM Person AS tb1 
  JOIN Person AS tb2 
    ON tb1.email = tb2.email 
WHERE tb1.id > tb2.id;

-- <strong>Code.2:</strong>
-- WHERE AND
DELETE tb1
	FROM Person AS tb1, Person AS tb2
WHERE tb1.email = tb2.email AND tb1.id > tb2.id;
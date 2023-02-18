//Blog: http://52.198.119.162/leetcode-mysql-596-classes-more-than-5-students/

-- <strong>Solution:</strong>
-- 1. 選擇標題 class 來自 Courses 的 table。
-- 2. 以 class 為群組分類。
-- 3. 有在這個 class 群組中不重複的 student 次數大於等於 5。
-- <pre style='background-color:#ggg'>
-- +----------+----------+
-- | class    | count    |
-- +----------+----------+
-- | Biology  | 1        |
-- | Computer | 1        |
-- | English  | 1        |
-- | Math*    | 6        |
-- +----------+----------+
-- </pre>

-- <strong>Code.1:</strong>
SELECT class FROM Courses
	GROUP BY class
    HAVING COUNT(DISTINCT student) >= 5;
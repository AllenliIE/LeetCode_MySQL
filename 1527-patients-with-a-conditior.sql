//Blog: http://52.198.119.162/2022/07/22/leetcode-mysql-1527-patients-with-a-condition/

-- <strong>Solution:</strong>
-- 1. 確認標題 * 。
-- 2. 來自 Patients 的 table。
-- 3. conditions中符合 '% DIAB1%' or 'DIAB1%'。
-- (ex.確保為 DIAB1% 的字樣)

-- <strong>Code.1:</strong>
SELECT * FROM Patients
WHERE conditions LIKE '% DIAB1%'
	OR conditions LIKE 'DIAB1%';
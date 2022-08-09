//Blog: http://52.198.119.162/2022/08/03/leetcode-mysql-1693-daily-leads-and-partners/

-- <strong>Solution:</strong>
-- 1. 選擇標題 date_id, make_name。
-- 2. 選擇標題 lead_id 的數字不重複的有幾個為 unique_leads。
-- 3. 選擇標題 partner_id 的數字不重複的有幾個為 unique_partners。
-- 4. 以 date_id 與 make_name 兩列為組合群組。
-- 5. 以 make_name 為第一排序，接著以 date_id 為第二排序。

-- <strong>Code1:</strong>
SELECT 
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name
ORDER BY make_name DESC, date_id DESC;
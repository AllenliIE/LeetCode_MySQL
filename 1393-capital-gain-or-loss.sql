//Blog: http://52.198.119.162/2022/08/05/leetcode-mysql-1393-capital-gain-loss/

-- <strong>Solution:</strong>
-- 1. 選擇標題 stock_name。
-- 2. 選擇標題 capital_gain_loss 將 operation = 'Buy' 為負數 price，否則為正數 price，並相加。
-- 3. 以 stock_name 為群組。

-- <strong>Code1: CASE-WHEN</strong>
SELECT stock_name,
	SUM(CASE WHEN operation = 'Buy' Then -price  ELSE price END) AS capital_gain_loss
    FROM Stocks
GROUP BY stock_name;

-- <strong>Code2: IF</strong>
SELECT stock_name,
	SUM(IF (operation = 'Buy', -price, price)) AS capital_gain_loss
    FROM Stocks
GROUP BY stock_name;
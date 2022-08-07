//Blog: http://52.198.119.162/2022/08/06/leetcode-mysql-1050-actors-and-directors-who-cooperated-at-least-three-times/

-- <strong>Solution:</strong>
-- 1. 確認標題 actor_id, director_id。
-- 2. 來自 ActorDirector 的 table。
-- 3. 以 actor_id 與 director_id 為群組。
-- 4. 有群組次數大於等於3。

-- <strong>Code.1:</strong>
SELECT actor_id, director_id
    FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
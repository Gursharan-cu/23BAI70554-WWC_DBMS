-- Write your PostgreSQL query statement below
-- G1_23BAI70147_Chandan_kumar_SESSION3

SELECT 
    s.user_id,
    ROUND(
        CASE
            WHEN COUNT(c.user_id) = 0 THEN 0.00
            ELSE SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END)::DECIMAL / COUNT(c.user_id)
        END, 2
    ) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c 
    ON s.user_id = c.user_id
GROUP BY s.user_id;

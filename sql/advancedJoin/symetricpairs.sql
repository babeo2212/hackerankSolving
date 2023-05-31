-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

WITH TB1 AS (
    SELECT A.X X1, A.Y Y1, B.X X2, B.Y Y2
    FROM FUNCTIONS A
    JOIN FUNCTIONS B ON A.Y = B.X
),
TBNOTDUP AS (
    SELECT X1, Y1, X2, Y2, COUNT(X1) C FROM TB1
    WHERE (X1 != Y1 AND X1 = Y2 AND X1 < Y1) OR (X1 = Y1 AND X1 = Y2)
    GROUP BY X1, Y1, X2, Y2
    ORDER BY X1
)
SELECT X1, Y1 
FROM TBNOTDUP
WHERE (X1 != Y1 AND X1 = Y2) OR C > 1
;

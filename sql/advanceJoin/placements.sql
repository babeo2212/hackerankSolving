-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
SELECT A.NAME
FROM (
    SELECT 
        ST.NAME NAME, P1.SALARY MYSAL, P2.SALARY FRSAL
    FROM 
        STUDENTS ST
    JOIN 
        FRIENDS F
        ON ST.ID = F.ID
    JOIN 
        PACKAGES P1
        ON ST.ID = P1.ID
    JOIN 
        PACKAGES P2
        ON F.FRIEND_ID = P2.ID ) A
WHERE MYSAL < FRSAL
ORDER BY FRSAL
;

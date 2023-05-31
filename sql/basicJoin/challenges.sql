-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
SELECT C.HACKER_ID, H.NAME, COUNT(C.CHALLENGE_ID) COUNT_
FROM CHALLENGES C
JOIN HACKERS H
ON H.HACKER_ID = C.HACKER_ID
GROUP BY C.HACKER_ID, H.NAME
HAVING 
    COUNT(C.CHALLENGE_ID) NOT IN
        (SELECT COUNT_
        FROM (
            SELECT COUNT_, COUNT(COUNT_) C
            FROM 
                (SELECT C.HACKER_ID, H.NAME, COUNT(C.CHALLENGE_ID) COUNT_
                FROM CHALLENGES C
                JOIN HACKERS H
                ON H.HACKER_ID = C.HACKER_ID
                GROUP BY C.HACKER_ID, H.NAME) COUNTDUP
            GROUP BY COUNT_) A
        WHERE C > 1 
            AND COUNT_ < (SELECT MAX(COUNT_)
                          FROM (
                                SELECT C.HACKER_ID, H.NAME, COUNT(C.CHALLENGE_ID) COUNT_
                                FROM CHALLENGES C
                                JOIN HACKERS H
                                ON H.HACKER_ID = C.HACKER_ID
                                GROUP BY C.HACKER_ID, H.NAME) A))
ORDER BY COUNT_ DESC, C.HACKER_ID;

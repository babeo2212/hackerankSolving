-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
SELECT ID, NAME
FROM (
    SELECT ID, NAME, COUNT(ID)
    FROM (
        SELECT H.NAME NAME, S.HACKER_ID ID, MAX(S.SCORE) MAX_SCORE, S.CHALLENGE_ID, D.SCORE SCORE
        FROM SUBMISSIONS S
        JOIN CHALLENGES C
        ON C.CHALLENGE_ID = S.CHALLENGE_ID
        JOIN HACKERS H
        ON H.HACKER_ID = S.HACKER_ID
        JOIN DIFFICULTY D
        ON D.DIFFICULTY_LEVEL = C.DIFFICULTY_LEVEL
        GROUP BY H.NAME, S.HACKER_ID, S.CHALLENGE_ID, D.SCORE
    ) A
    WHERE MAX_SCORE = SCORE
    GROUP BY ID, NAME
    HAVING COUNT(ID) > 1
    ORDER BY COUNT(ID) DESC, ID
) B
;

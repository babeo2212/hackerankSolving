-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
WITH TB1 AS (
    SELECT CITY, CHAR_LENGTH(CITY)
    FROM STATION
    ORDER BY CHAR_LENGTH(CITY) ASC, CITY ASC
    LIMIT 1
), TB2 AS (
    SELECT CITY, CHAR_LENGTH(CITY)
    FROM STATION
    ORDER BY CHAR_LENGTH(CITY) DESC, CITY DESC
    LIMIT 1
)
SELECT *
FROM TB1
UNION
SELECT *
FROM TB2
;

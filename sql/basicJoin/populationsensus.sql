-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
SELECT SUM(CI.POPULATION)
FROM CITY CI
JOIN COUNTRY CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CONTINENT = "ASIA"
;

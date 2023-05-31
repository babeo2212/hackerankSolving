-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
SELECT CI.NAME
FROM CITY CI
JOIN COUNTRY CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CONTINENT = "AFRICA";

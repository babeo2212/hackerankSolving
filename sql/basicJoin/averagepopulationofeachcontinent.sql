-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
SELECT CO.CONTINENT, FLOOR(AVG(CI.POPULATION))
FROM CITY CI
JOIN COUNTRY CO 
ON CI.COUNTRYCODE = CO.CODE
GROUP BY CO.CONTINENT
ORDER BY CO.CONTINENT;

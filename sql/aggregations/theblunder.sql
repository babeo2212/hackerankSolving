-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
SELECT ROUND(AVG(SALARY), 0) - ROUND(AVG(REPLACE(SALARY, 0, '')), 0)
FROM EMPLOYEES
;

-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
SELECT INCOME, COUNT(*)
FROM
    (
        SELECT (SALARY * MONTHS) INCOME
        FROM EMPLOYEE E
        WHERE (SALARY * MONTHS) = (
            SELECT MAX(SALARY * MONTHS)
            FROM EMPLOYEE
        )
    ) A
GROUP BY INCOME;

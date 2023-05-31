-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
WITH TB1 AS 
(
    SELECT ID, NAME, SUBSTRING(NAME, -3) AS STRNAME
    FROM STUDENTS
    WHERE MARKS > 75
)
SELECT NAME
FROM TB1
ORDER BY STRNAME, ID
;

select name
from (
    select id, name, substring(name, -3) sname
    from students
    where marks > 75
) A
order by sname, id;

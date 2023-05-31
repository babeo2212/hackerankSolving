-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(CITY, "w*[aeiou]$") 

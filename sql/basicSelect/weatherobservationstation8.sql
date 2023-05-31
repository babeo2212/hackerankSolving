-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(CITY, "^[aeiou]w*") 
  AND REGEXP_LIKE(CITY, "w*[aeiou]$");

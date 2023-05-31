-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
SELECT DISTINCT CITY
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, "w*[aeuoi]$") 
  OR NOT REGEXP_LIKE(CITY, "^[aeuoi]w*");

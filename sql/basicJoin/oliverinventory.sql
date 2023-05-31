https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

select w.id, wp.age, w.coins_needed, w.power
from wands w 
join wands_property wp on 
    wp.code = w.code
join (
    select min(coins_needed) coins_needed, w.code, wp.age, w.power
    from wands w
    join wands_property wp on
        w.code = wp.code
    where wp.is_evil = 0
    group by w.code, wp.age, w.power
) a on
    a.age = wp.age and
    a.coins_needed = w.coins_needed and 
    a.power = w.power    
order by a.power desc, a.age desc

.print Question 8 - jxiang2

SELECT v.year, MAX(v.make), MAX(v.color)
FROM vehicles v
GROUP BY year
;

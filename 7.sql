.print Question 7 - jxiang2

SELECT v.color, (COUNT(t.tno)/COUNT(DISTINCT r.regno)), AVG(t.fine), MAX(t.fine)
FROM vehicles v, registrations r, tickets t
WHERE v.vin = r.vin
AND t.regno = r.regno
AND r.expiry >= date('now', '1 month')
GROUP BY v.color
;

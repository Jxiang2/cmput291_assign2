.print Question 5 - jxiang2

SELECT d.fname, d.lname
FROM demeritNotices d
WHERE d.ddate >= date('now', '-2 years')
GROUP BY d.fname, d.lname
HAVING SUM(d.points) >= 15;

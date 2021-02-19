.print Question 9 - jxiang2
CREATE VIEW personDetails(fname, lname, bdate, bplace, carsowned, ticketsRcvd)
AS SELECT p.fname, p.lname, p.bdate, p.bplace, 
COUNT(DISTINCT (CASE WHEN r.regdate >= DATE('now', '-1 year') THEN v.vin  END)),
COUNT(DISTINCT (CASE WHEN t.vdate >= DATE('now', '-1 year')THEN t.tno  END ))
FROM (
persons p
Left outer join registrations r ON r.fname = p.fname AND r.lname = p.lname
Left outer join tickets t ON t.regno = r.regno
Left outer join vehicles v ON v.vin = r.vin
)
GROUP BY p.fname, p.lname
;

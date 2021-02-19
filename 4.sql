.print Question 4 - jxiang2

SELECT p.fname, p.lname
FROM persons p, births b
WHERE (b.f_fname = 'Michael'AND b.f_lname = 'Fox')
AND (p.fname = b.fname AND p.lname = b.lname)

AND p.bdate in (SELECT MIN(p.bdate) FROM persons p, births b
WHERE (b.f_fname = 'Michael'AND b.f_lname = 'Fox')
AND (p.fname = b.fname AND p.lname = b.lname))
;

			


.print Question 2 - jxiang2

SELECT DISTINCT b.fname, b.lname
FROM births b, births b1
WHERE 
(b1.fname = 'Michael'
AND b1.lname = 'Fox')
AND (b.fname != 'Michael'
AND b.lname != 'Fox')
AND ((b.f_fname = b1.f_fname
AND b.f_lname = b1.f_lname)
OR
(b.m_fname = b1.m_fname
AND b.m_lname = b1.m_lname))
;

		

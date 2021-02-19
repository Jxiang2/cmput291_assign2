.print Question 6 - jxiang2

SELECT p.fname, p.lname
FROM persons p, marriages m
WHERE 
((m.p1_fname = 'Michael' AND m.p1_lname = 'Fox')
AND (p.fname = m.p2_fname AND p.lname = m.p2_lname))
OR
((m.p2_fname = 'Michael' AND m.p2_lname = 'Fox')
AND (m.p1_fname = p.fname AND m.p1_lname = p.lname)) 
ORDER BY m.regdate DESC
LIMIT 1
;

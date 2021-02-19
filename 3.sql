.print Question 3 - jxiang2

SELECT DISTINCT gc.fname, gc.lname
FROM births gc, births c1, births c, births gc1
WHERE ((gc.f_fname = c.fname AND gc.f_lname = c.lname) OR (gc.m_fname = c.fname AND gc.m_lname = c.lname))
AND (c.f_fname = c1.f_fname AND c.f_lname = c1.f_lname) 
AND ((gc1.f_fname = c1.fname AND gc1.f_lname =c1.lname) OR (gc1.m_fname = c1.fname AND gc1.m_lname = c1.lname))
AND gc1.fname = 'Michael'
AND gc1.lname = 'Fox'
AND gc.fname != 'Michael'
AND gc.lname != 'Fox'
;

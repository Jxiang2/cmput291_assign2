.print Question 1 - jxiang2

SELECT p.fname, p.lname, p.phone
FROM persons p, vehicles v, registrations r
WHERE r.vin = v.vin
AND p.fname = r.fname
AND p.lname = r.lname
AND r.vin = v.vin
AND v.make = 'Chevrolet'
AND v.model = 'Camaro'
AND v.year = 1969
;


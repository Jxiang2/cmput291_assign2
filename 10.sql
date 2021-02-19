.print Question 10 - jxiang2

SELECT pd.fname, pd.lname, v.make, v.model
FROM personDetails pd, vehicles v, registrations r, tickets t
Where (r.fname = pd.fname AND r.lname = pd.lname) AND (r.vin = v.vin)
AND t.regno = r.regno
AND (t.violation like '%red light') AND (pd.ticketsRcvd >= 3)
;

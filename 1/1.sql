SELECT supplierid, name, rating
FROM suppliers
WHERE rating < (
	SELECT rating 
	FROM suppliers 
	WHERE supplierid = 4
)
ORDER BY supplierid;
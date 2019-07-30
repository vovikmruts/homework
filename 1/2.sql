SELECT DISTINCT productid, name
FROM products
WHERE city = 'London' OR 
productid IN (
SELECT DISTINCT productid FROM supplies
INNER JOIN suppliers ON supplies.supplierid = suppliers.supplierid
WHERE suppliers.city = 'London'
)
ORDER BY productid;

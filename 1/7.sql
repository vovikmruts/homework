SELECT DISTINCT detailid, name
FROM details
WHERE detailid IN (SELECT DISTINCT detailid FROM supplies WHERE supplierid IN (SELECT supplierid FROM suppliers WHERE city = 'London'))
OR
detailid IN (SELECT DISTINCT detailid FROM supplies WHERE productid IN (SELECT productid FROM products WHERE city = 'London'))
ORDER BY detailid;
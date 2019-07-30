SELECT productid
FROM products
WHERE productid NOT IN(
SELECT productid 
FROM supplies)
ORDER BY productid;
SELECT supplierid, detailid, productid, quantity
FROM supplies
WHERE supplierid IN (
SELECT DISTINCT supplierid FROM supplies WHERE detailid IN (
SELECT detailid FROM details WHERE color = 'Red'))
ORDER BY supplierid, detailid, productid;

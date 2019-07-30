;WITH Det_CTE (sup, det1, det2)
AS
(
SELECT DISTINCT s1.supplierid, s1.detailid, s2.detailid FROM supplies AS s1
CROSS JOIN supplies AS s2
WHERE s1.supplierid = s2.supplierid AND s2.detailid > s1.detailid
)
SELECT cte1.sup AS First_Supplier
      ,cte2.sup AS Second_Supplier
	  ,cte1.det1 AS First_Detail
	  ,cte1.det2 AS Second_Detail
FROM Det_CTE AS cte1
CROSS JOIN Det_CTE AS cte2
WHERE cte1.det1 = cte2.det1 AND cte1.det2 = cte2.det2 AND cte1.sup < cte2.sup
ORDER BY First_Supplier, Second_Supplier, First_Detail, Second_Detail;


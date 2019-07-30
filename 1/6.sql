SELECT DISTINCT d1.color, d2.city
FROM details AS d1
CROSS JOIN details as d2
ORDER BY color, city;
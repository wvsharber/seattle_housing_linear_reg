SELECT "SalePrice", "SqFtTotLiving"
FROM rpsale AS rp
JOIN resbldg AS rd
ON CONCAT(rp."Minor", rp."Major") = Concat(rd."Minor", rd."Major")
WHERE r

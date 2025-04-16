Select id, FIRST_NAME, LAST_NAME,
CASE WHEN PRODUCT_NAME = 'Cell Phone' THEN 'Mobiles' else PRODUCT_NAME END AS PRODUCT_NAME,
ITEMS_SOLD, SOLD_PRICE, ITEMS_SOLD*SOLD_PRICE AS TOTAL_SALES,
CASE WHEN ITEMS_SOLD*SOLD_PRICE >= 3000 THEN 'High' when ITEMS_SOLD*SOLD_PRICE >=15000 THEN 'MEDIUM' ELSE 'LOW' END AS SALES_STATUS,
SOLD_DATE, COUNTRY, REGION
FROM MYDB.ONE_DRIVE.TOTAL_SALE_IN
WHERE REGION = 'North America'
ORDER BY SOLD_PRICE DESC
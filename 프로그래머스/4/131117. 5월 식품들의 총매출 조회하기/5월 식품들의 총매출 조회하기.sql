-- 코드를 입력하세요
SELECT A.PRODUCT_ID, PRODUCT_NAME, SUM(AMOUNT*PRICE) AS TOTAL_SALES
FROM FOOD_PRODUCT A
JOIN FOOD_ORDER B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID
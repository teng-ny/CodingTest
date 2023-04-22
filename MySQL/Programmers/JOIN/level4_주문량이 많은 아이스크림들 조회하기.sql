# 7월 아이스크림 총 주문량
# 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서
# 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.

WITH JU AS (
    SELECT FLAVOR
         , SUM(TOTAL_ORDER) AS TOTAL
    FROM JULY
    GROUP BY FLAVOR
), TOT AS (
    SELECT JU.FLAVOR
         , FIRST_HALF.TOTAL_ORDER+JU.TOTAL AS TOTAL
    FROM FIRST_HALF
        LEFT JOIN JU ON FIRST_HALF.FLAVOR = JU.FLAVOR)
        
SELECT FLAVOR
FROM TOT
ORDER BY TOTAL DESC
LIMIT 3
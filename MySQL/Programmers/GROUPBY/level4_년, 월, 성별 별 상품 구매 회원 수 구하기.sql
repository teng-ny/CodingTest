# USER_INFO 테이블과 ONLINE_SALE 테이블
# 년, 월, 성별 별로 상품을 구매한 회원수를 집계
# 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 
# 성별 정보가 없는 경우 결과에서 제외해주세요.

SELECT DATE_FORMAT(SALE.sales_date, "%Y") AS YEAR
     , DATE_FORMAT(SALE.sales_date, "%m") AS MONTH
     , USER.GENDER AS GENDER
     , COUNT(DISTINCT SALE.user_id) AS USERS
FROM ONLINE_SALE AS SALE
    LEFT JOIN USER_INFO AS USER ON SALE.USER_ID = USER.USER_ID
WHERE USER.GENDER IS NOT NULL
GROUP BY DATE_FORMAT(SALE.sales_date, "%Y"), DATE_FORMAT(SALE.sales_date, "%m"), USER.GENDER
ORDER BY 1, 2, 3
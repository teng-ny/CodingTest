# CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블과 CAR_RENTAL_COMPANY_DISCOUNT_PLAN 테이블에서 
# 자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능
# 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
# 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력하는 SQL문을 작성
# 결과는 대여 금액을 기준으로 내림차순 정렬 / 자동차 종류를 기준으로 오름차순 정렬 / 자동차 ID를 기준으로 내림차순 정렬

-- 대여 가능 ID
WITH ID AS (        
    SELECT DISTINCT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE END_DATE >= '2022-11-01' AND START_DATE <= '2022-11-30'
    ), FEE AS (
    SELECT CAR_TYPE, DISCOUNT_RATE
    FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    WHERE DURATION_TYPE="30일 이상")

SELECT CAR.CAR_ID
     , CAR.CAR_TYPE
     , ROUND(CAR.DAILY_FEE * 30 * (100-FEE.DISCOUNT_RATE)/100) AS FEE
FROM CAR_RENTAL_COMPANY_CAR AS CAR
    LEFT JOIN FEE ON CAR.CAR_TYPE=FEE.CAR_TYPE
WHERE CAR.CAR_TYPE IN ("세단", "SUV")
AND CAR.CAR_ID NOT IN (SELECT * FROM ID)
HAVING FEE BETWEEN 500000 AND 2000000
ORDER BY FEE DESC, 2 ASC, 1 DESC
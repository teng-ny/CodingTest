# CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블
# 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력
# 자동차 ID 리스트는 중복이 없어야 하며
# 자동차 ID를 기준으로 내림차순 정렬

SELECT DISTINCT history.car_id AS CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS history
    LEFT JOIN CAR_RENTAL_COMPANY_CAR AS car ON history.CAR_ID = car.CAR_ID
WHERE car.car_type="세단" AND DATE_FORMAT(history.start_date, "%m")="10"
ORDER BY CAR_ID DESC;
# MEMBER_PROFILE와 REST_REVIEW 테이블에서 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회
# 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성
# 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬

SELECT MEMBER_PROFILE.MEMBER_NAME
     , REST_REVIEW.REVIEW_TEXT
     , DATE_FORMAT(REST_REVIEW.REVIEW_DATE, "%Y-%m-%d") AS REVIEW_DATE
FROM REST_REVIEW
    LEFT JOIN MEMBER_PROFILE ON REST_REVIEW.MEMBER_ID = MEMBER_PROFILE.MEMBER_ID
WHERE REST_REVIEW.MEMBER_ID = (SELECT MEMBER_ID
                    FROM REST_REVIEW
                    GROUP BY MEMBER_ID
                    ORDER BY COUNT(*) DESC
                    LIMIT 1)
ORDER BY REVIEW_DATE ASC, REST_REVIEW.REVIEW_TEXT ASC;
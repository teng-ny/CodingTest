# PRODUCT 테이블에서 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력
# 결과는 상품 카테고리 코드를 기준으로 오름차순 정렬

SELECT LEFT(PRODUCT_CODE, 2) AS CATEGORY
     , COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY LEFT(PRODUCT_CODE, 2)
ORDER BY CATEGORY
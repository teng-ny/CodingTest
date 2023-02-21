# 이메일이 중복인 것 중 가장 작은 것만 남김
# keeping해야하는 이메일 아이디를 가져옴
DELETE 
FROM Person
WHERE id NOT IN (
SELECT min_id
FROM (
SELECT email, MIN(id) AS min_id
FROM Person
GROUP BY email) sub)
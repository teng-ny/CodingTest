-- 1. INNER JOIN할 때 ON 조건 안에 BETWEEN 사용 가능
-- 2. CASE문 사용하여 조건에 해당하지 않으면 NULL 할당 가능
-- 3. ORDER BY할 때, 순서만 잘 정해주면 여러 조건으로 정렬

SELECT CASE WHEN g.grade <8 THEN NULL ELSE s.name END AS name
     , g.grade
     , s.marks
FROM Students s
    INNER JOIN Grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, name, s.marks
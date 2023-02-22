SELECT DISTINCT l.Num AS ConsecutiveNums
FROM logs AS l
    INNER JOIN logs AS l_next ON l.id + 1 = l_next.id
    INNER JOIN logs AS l_next2 ON l.id + 2 = l_next2.id
WHERE l.Num = l_next.Num AND l.num=l_next2.Num
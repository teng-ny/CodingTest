SELECT DISTINCT l.Num AS ConsecutiveNums
FROM (
    SELECT Num
        , LEAD(Num, 1) OVER (ORDER BY Id) AS next
        , LEAD(Num, 2) OVER (ORDER BY Id) AS afternext
    FROM logs) l
WHERE l.Num = l.next AND l.Num=l.afternext
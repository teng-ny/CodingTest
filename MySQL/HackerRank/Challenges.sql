SELECT k.hacker_id
     , k.name
     , COUNT(*) AS challenges_created
FROM Hackers k
INNER JOIN Challenges c ON k.hacker_id=c.hacker_id
GROUP BY k.hacker_id, k.name
HAVING challenges_created = (SELECT MAX(challenges_created)
                             FROM (SELECT hacker_id
                                         , COUNT(*) AS challenges_created
                                   FROM Challenges
                                   GROUP BY hacker_id
                                  ) sub)
OR challenges_created IN (SELECT challenges_created
                          FROM (SELECT hacker_id
                                     , COUNT(*) AS challenges_created
                                FROM Challenges
                                GROUP BY hacker_id
                                
                                ) sub
                          GROUP BY challenges_created
                          HAVING COUNT(*) = 1)
ORDER BY challenges_created DESC, k.hacker_id ASC
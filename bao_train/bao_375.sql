SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ky')   AND t.create_at between '2016-08-03 13:29:49' and '2018-06-28 13:29:49'   AND t.coordinate <@ box '((-85.90228055499267,37.28599420665283),(-85.90050844500732,37.28674619334717))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'case')   AND t.create_at between '2017-01-07 15:57:13' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-105.51345,30.14822),(-47.444950000000006,54.789320000000004))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gold')   AND t.create_at between '2018-08-24 00:08:34' and '2018-08-25 00:08:34'   AND t.coordinate <@ box '((-109.04815,28.126949999999997),(-50.97965000000001,52.76805))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hill')   AND t.create_at between '2018-09-14 22:21:31' and '2018-12-09 22:21:31'   AND t.coordinate <@ box '((-76.31428125000001,42.925231249999996),(-69.05571875,46.00536875))'
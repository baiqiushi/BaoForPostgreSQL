SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2018-11-14 15:59:18' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-83.89063680998535,43.59371571330567),(-83.88709259001465,43.595219686694335))'
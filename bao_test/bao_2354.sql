SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'experiencing')   AND t.create_at between '2017-04-09 16:36:50' and '2018-03-22 16:36:50'   AND t.coordinate <@ box '((-83.569903625,25.757852624999998),(-79.940622375,27.297921375))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lakeshore')   AND t.create_at between '2019-04-20 02:21:15' and '2019-04-21 02:21:15'   AND t.coordinate <@ box '((-100.04464605000001,31.33292731),(-92.78608355,34.41306481))'
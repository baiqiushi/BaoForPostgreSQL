SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'airport')   AND t.create_at between '2015-11-25 12:26:21' and '2015-11-30 12:26:21'   AND t.coordinate <@ box '((-83.38400548976563,42.20165135289063),(-83.32729797023438,42.22571492710937))'
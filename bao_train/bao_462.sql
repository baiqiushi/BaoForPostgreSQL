SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tonight')   AND t.create_at between '2016-09-23 23:12:30' and '2016-09-24 23:12:30'   AND t.coordinate <@ box '((-83.99045915625,41.45858540625),(-83.08313884375,41.84360259375))'
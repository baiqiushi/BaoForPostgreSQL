SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2018-12-12 18:20:05' and '2018-12-17 18:20:05'   AND t.coordinate <@ box '((-75.53991205000001,41.005853949999995),(-68.28134955,44.08599145))'
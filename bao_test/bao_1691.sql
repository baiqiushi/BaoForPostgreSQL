SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'kill')   AND t.create_at between '2016-01-17 02:27:33' and '2016-01-19 02:27:33'   AND t.coordinate <@ box '((-76.3490301125,40.2072213125),(-74.5343894875,40.9772556875))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fit')   AND t.create_at between '2017-10-31 20:27:04' and '2018-01-25 20:27:04'   AND t.coordinate <@ box '((-118.55820791250001,33.6783271125),(-116.7435672875,34.448361487499994))'
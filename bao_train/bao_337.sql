SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'haircut')   AND t.create_at between '2016-07-10 11:47:10' and '2016-07-15 11:47:10'   AND t.coordinate <@ box '((-74.237830078125,40.606945703125),(-73.78416992187499,40.799454296875005))'
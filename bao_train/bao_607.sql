SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'snacks')   AND t.create_at between '2016-12-31 01:00:59' and '2017-06-22 01:00:59'   AND t.coordinate <@ box '((-77.1501150390625,38.8469728515625),(-76.9232849609375,38.9432271484375))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'incident')   AND t.create_at between '2017-05-05 13:27:46' and '2017-06-17 13:27:46'   AND t.coordinate <@ box '((-73.814453078125,40.656720703124996),(-73.36079292187499,40.849229296875))'
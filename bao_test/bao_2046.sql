SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'canoe')   AND t.create_at between '2016-09-10 20:01:28' and '2016-09-15 20:01:28'   AND t.coordinate <@ box '((-79.8615741398828,40.49189285644531),(-79.83322038011718,40.50392464355469))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'okie')   AND t.create_at between '2016-07-26 17:07:01' and '2017-01-15 17:07:01'   AND t.coordinate <@ box '((-126.01039118,31.064843350000004),(-111.49326618,37.22511835))'
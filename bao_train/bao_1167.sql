SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'show')   AND t.create_at between '2018-02-12 19:36:58' and '2018-03-05 19:36:58'   AND t.coordinate <@ box '((-74.44040371499268,39.36302376665283),(-74.43863160500733,39.36377575334717))'
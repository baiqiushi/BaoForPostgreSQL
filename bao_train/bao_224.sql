SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'heart')   AND t.create_at between '2016-04-23 10:29:27' and '2016-05-14 10:29:27'   AND t.coordinate <@ box '((-80.19335222749633,25.784352203326414),(-80.19246617250367,25.784728196673584))'
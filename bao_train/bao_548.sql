SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'minute')   AND t.create_at between '2016-11-23 19:55:27' and '2016-11-24 19:55:27'   AND t.coordinate <@ box '((-111.855391,26.416423),(-82.82114100000001,38.736973))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'vs')   AND t.create_at between '2015-12-05 20:41:26' and '2015-12-06 20:41:26'   AND t.coordinate <@ box '((-87.3956445,22.7104115),(-72.87851950000001,28.870686499999998))'
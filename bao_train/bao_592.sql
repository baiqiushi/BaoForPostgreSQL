SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2016-12-18 19:27:26' and '2016-12-23 19:27:26'   AND t.coordinate <@ box '((-82.07721131374818,41.4261220016632),(-82.07676828625183,41.42630999833679))'
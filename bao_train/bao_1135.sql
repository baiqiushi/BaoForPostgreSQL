SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'interested')   AND t.create_at between '2018-01-15 15:36:35' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-111.84147171374818,33.3060665016632),(-111.84102868625183,33.30625449833679))'
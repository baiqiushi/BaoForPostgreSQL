SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'medical')   AND t.create_at between '2016-08-21 22:10:39' and '2016-08-23 22:10:39'   AND t.coordinate <@ box '((-90.72499451374817,38.74495880166321),(-90.72455148625183,38.7451467983368))'
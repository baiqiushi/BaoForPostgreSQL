SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'join')   AND t.create_at between '2016-04-19 18:14:17' and '2016-04-21 18:14:17'   AND t.coordinate <@ box '((-79.91852995687408,40.4065092008316),(-79.91830844312592,40.406603199168394))'
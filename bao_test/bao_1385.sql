SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'grade')   AND t.create_at between '2018-09-26 20:00:36' and '2018-09-27 20:00:36'   AND t.coordinate <@ box '((-76.63953187988281,39.35208610644531),(-76.61117812011719,39.36411789355469))'
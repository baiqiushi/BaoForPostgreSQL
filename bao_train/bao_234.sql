SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'got')   AND t.create_at between '2016-04-29 17:27:32' and '2018-03-24 17:27:32'   AND t.coordinate <@ box '((-84.41137211953125,33.89323412578125),(-84.29795708046876,33.94136127421875))'
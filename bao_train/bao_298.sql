SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'labeling')   AND t.create_at between '2016-06-14 16:38:56' and '2017-05-27 16:38:56'   AND t.coordinate <@ box '((-73.96407997687407,40.649282530831606),(-73.96385846312592,40.6493765291684))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'put')   AND t.create_at between '2016-06-10 03:01:07' and '2018-05-05 03:01:07'   AND t.coordinate <@ box '((-71.58802765499267,42.33972879665283),(-71.58625554500732,42.34048078334717))'
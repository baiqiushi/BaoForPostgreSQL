SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lemmeon')   AND t.create_at between '2016-06-18 03:37:31' and '2018-05-13 03:37:31'   AND t.coordinate <@ box '((-75.51859244687408,39.200256730831605),(-75.51837093312592,39.2003507291684))'
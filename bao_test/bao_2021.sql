SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'school')   AND t.create_at between '2016-08-29 12:27:39' and '2016-08-30 12:27:39'   AND t.coordinate <@ box '((-86.79028873953125,33.37442381578125),(-86.67687370046876,33.42255096421875))'
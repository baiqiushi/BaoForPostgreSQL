SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gardening')   AND t.create_at between '2016-08-28 18:25:10' and '2016-08-29 18:25:10'   AND t.coordinate <@ box '((-76.31660751953125,36.86163642578125),(-76.20319248046876,36.90976357421875))'
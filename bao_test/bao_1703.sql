SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'indiana')   AND t.create_at between '2016-01-26 20:52:05' and '2017-12-20 20:52:05'   AND t.coordinate <@ box '((-86.29300219976562,39.88927680289063),(-86.23629468023438,39.91334037710937))'
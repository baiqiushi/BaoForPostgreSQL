SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fun')   AND t.create_at between '2017-04-22 21:08:45' and '2017-05-13 21:08:45'   AND t.coordinate <@ box '((-126.48112499999999,27.670125),(-97.446875,39.990674999999996))'
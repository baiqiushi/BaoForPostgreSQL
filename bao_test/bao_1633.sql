SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lunch')   AND t.create_at between '2015-11-28 20:29:33' and '2015-11-29 20:29:33'   AND t.coordinate <@ box '((-113.75283182,28.6768801),(-99.23570682,34.837155100000004))'
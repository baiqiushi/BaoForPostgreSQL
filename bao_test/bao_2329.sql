SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'clear')   AND t.create_at between '2017-03-28 19:53:52' and '2017-03-29 19:53:52'   AND t.coordinate <@ box '((-120.6034150390625,37.251872851562496),(-120.37658496093749,37.3481271484375))'
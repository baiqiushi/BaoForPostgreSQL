SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hr')   AND t.create_at between '2018-06-14 19:43:33' and '2018-06-15 19:43:33'   AND t.coordinate <@ box '((-85.1964883390625,45.3166755515625),(-84.96965826093749,45.4129298484375))'
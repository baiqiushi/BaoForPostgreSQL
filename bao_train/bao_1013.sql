SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'family')   AND t.create_at between '2017-10-31 22:45:56' and '2017-11-05 22:45:56'   AND t.coordinate <@ box '((-71.1926150390625,42.5268728515625),(-70.9657849609375,42.623127148437504))'
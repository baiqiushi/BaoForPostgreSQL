SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'us')   AND t.create_at between '2017-01-26 00:34:15' and '2017-01-31 00:34:15'   AND t.coordinate <@ box '((-95.076077625,44.207226625),(-91.446796375,45.747295375))'
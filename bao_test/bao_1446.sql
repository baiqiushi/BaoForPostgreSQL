SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'seasonal')   AND t.create_at between '2018-12-06 19:05:51' and '2018-12-16 19:05:51'   AND t.coordinate <@ box '((-115.68196135000001,41.958623349999996),(-108.42339885,45.03876085))'
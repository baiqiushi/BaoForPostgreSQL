SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'read')   AND t.create_at between '2018-05-01 12:05:23' and '2018-05-03 12:05:23'   AND t.coordinate <@ box '((-113.5044247,26.821462399999998),(-55.4359247,51.462562399999996))'
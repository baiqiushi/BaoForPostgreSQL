SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nowhiring')   AND t.create_at between '2018-01-04 17:39:42' and '2018-01-05 17:39:42'   AND t.coordinate <@ box '((-83.68961585000001,38.95449975),(-76.43105335,42.03463725))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'aka')   AND t.create_at between '2019-02-09 18:17:33' and '2019-08-01 18:17:33'   AND t.coordinate <@ box '((-100.50044302749633,47.49981200332642),(-100.49955697250367,47.50018799667358))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'want')   AND t.create_at between '2018-07-04 03:30:03' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-106.50327821997071,31.764522026611328),(-106.4961897800293,31.767529973388672))'
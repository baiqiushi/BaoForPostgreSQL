SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'came')   AND t.create_at between '2017-01-07 13:55:34' and '2017-02-19 13:55:34'   AND t.coordinate <@ box '((-72.945169325,41.580110425),(-69.315888075,43.120179175000004))'
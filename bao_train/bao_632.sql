SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'video')   AND t.create_at between '2017-07-31 05:43:49' and '2017-08-01 05:43:49'   AND t.coordinate <@ box '((-75.800540625,39.923665625),(-72.171259375,41.463734375))'
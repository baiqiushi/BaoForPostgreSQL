SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'clerk')   AND t.create_at between '2019-05-05 16:58:11' and '2019-05-10 16:58:11'   AND t.coordinate <@ box '((-80.8313140390625,32.3797961515625),(-80.6044839609375,32.476050448437505))'
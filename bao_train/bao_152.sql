SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'heart')   AND t.create_at between '2016-04-26 23:29:14' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-84.358017868125,41.455534573125),(-83.904357711875,41.648043166875006))'
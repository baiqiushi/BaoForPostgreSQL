SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'company')   AND t.create_at between '2016-04-12 18:29:59' and '2016-04-13 18:29:59'   AND t.coordinate <@ box '((-85.939864925,40.622238225),(-82.310583675,42.162306975))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mountain')   AND t.create_at between '2015-12-16 04:27:42' and '2016-06-06 04:27:42'   AND t.coordinate <@ box '((-104.80457405499267,39.87780550665283),(-104.80280194500732,39.87855749334717))'
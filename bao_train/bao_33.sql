SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2015-12-14 22:45:58' and '2015-12-15 22:45:58'   AND t.coordinate <@ box '((-82.51721920998536,40.757638013305666),(-82.51367499001465,40.75914198669433))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'v')   AND t.create_at between '2016-11-04 02:31:33' and '2016-11-06 02:31:33'   AND t.coordinate <@ box '((-81.25404856,37.64426725),(-66.73692356000001,43.80454225))'
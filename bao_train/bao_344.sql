SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ut')   AND t.create_at between '2016-10-23 15:04:43' and '2016-10-25 15:04:43'   AND t.coordinate <@ box '((-115.61290425,39.548523249999995),(-108.35434174999999,42.62866075))'
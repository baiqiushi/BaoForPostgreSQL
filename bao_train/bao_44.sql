SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'degrees')   AND t.create_at between '2015-12-25 03:17:13' and '2017-11-18 03:17:13'   AND t.coordinate <@ box '((-76.84736718625,40.43517529625),(-75.94004687375,40.82019248375))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bello')   AND t.create_at between '2017-05-22 02:10:39' and '2017-05-27 02:10:39'   AND t.coordinate <@ box '((-66.51830436624999,18.262189666250002),(-65.61098405375,18.64720685375))'
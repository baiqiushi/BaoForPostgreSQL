SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'link')   AND t.create_at between '2019-07-26 16:58:13' and '2019-08-05 16:58:13'   AND t.coordinate <@ box '((-86.75362905624999,32.17429660625),(-85.84630874375,32.55931379375))'
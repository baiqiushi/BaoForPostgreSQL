SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'blue')   AND t.create_at between '2018-04-03 18:35:22' and '2018-04-13 18:35:22'   AND t.coordinate <@ box '((-73.95011075687408,40.6499530008316),(-73.94988924312592,40.650046999168396))'
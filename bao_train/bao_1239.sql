SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'veterans')   AND t.create_at between '2016-03-10 14:17:38' and '2016-04-22 14:17:38'   AND t.coordinate <@ box '((-73.97548225687407,40.7509744008316),(-73.97526074312592,40.751068399168396))'
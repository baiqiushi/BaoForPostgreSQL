SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'show')   AND t.create_at between '2016-06-01 20:44:14' and '2016-08-26 20:44:14'   AND t.coordinate <@ box '((-82.36502163687408,27.993585010831602),(-82.36480012312592,27.993679009168396))'
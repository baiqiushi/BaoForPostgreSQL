SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cain')   AND t.create_at between '2017-11-04 02:01:25' and '2017-11-05 02:01:25'   AND t.coordinate <@ box '((-117.2626670390625,32.6843218515625),(-117.0358369609375,32.780576148437504))'
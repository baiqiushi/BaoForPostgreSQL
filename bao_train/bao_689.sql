SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mexico')   AND t.create_at between '2017-10-04 21:13:05' and '2018-09-16 21:13:05'   AND t.coordinate <@ box '((-82.82805255687408,27.9705376008316),(-82.82783104312593,27.970631599168396))'
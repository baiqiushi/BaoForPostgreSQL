SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tocandoyque')   AND t.create_at between '2016-11-13 07:41:01' and '2017-10-26 07:41:01'   AND t.coordinate <@ box '((-75.82390429499999,39.955989054999996),(-72.194623045,41.496057805))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'services')   AND t.create_at between '2016-06-05 17:51:46' and '2016-06-06 17:51:46'   AND t.coordinate <@ box '((-84.47240795,33.68701815),(-77.21384545,36.76715565000001))'
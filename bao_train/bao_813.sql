SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'house')   AND t.create_at between '2018-02-04 02:06:10' and '2018-05-01 02:06:10'   AND t.coordinate <@ box '((-109.50536441374817,38.527678001663205),(-109.50492138625182,38.52786599833679))'
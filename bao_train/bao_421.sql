SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'make')   AND t.create_at between '2017-01-06 22:30:40' and '2017-01-07 22:30:40'   AND t.coordinate <@ box '((-78.71326375976562,33.815638212890626),(-78.65655624023438,33.83970178710937))'
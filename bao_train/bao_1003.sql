SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'time')   AND t.create_at between '2018-11-16 23:52:40' and '2018-11-17 23:52:40'   AND t.coordinate <@ box '((-88.41587190000001,34.7709349),(-59.381621900000006,47.0914849))'
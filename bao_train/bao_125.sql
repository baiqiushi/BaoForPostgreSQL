SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'med')   AND t.create_at between '2016-03-16 23:28:23' and '2016-04-06 23:28:23'   AND t.coordinate <@ box '((-75.17054595499268,39.99880400665283),(-75.16877384500732,39.99955599334717))'
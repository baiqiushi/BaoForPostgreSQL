SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lake')   AND t.create_at between '2016-06-05 02:47:30' and '2016-06-10 02:47:30'   AND t.coordinate <@ box '((-71.33421938499268,43.59962400665283),(-71.33244727500733,43.60037599334717))'
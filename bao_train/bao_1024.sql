SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'check')   AND t.create_at between '2019-01-04 15:06:40' and '2019-03-31 15:06:40'   AND t.coordinate <@ box '((-75.40213537499268,39.91633938665283),(-75.40036326500733,39.91709137334717))'
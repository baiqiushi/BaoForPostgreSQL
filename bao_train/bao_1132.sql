SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2019-07-24 18:05:18' and '2019-08-03 18:05:18'   AND t.coordinate <@ box '((-83.99536375499268,43.55914020665283),(-83.99359164500733,43.55989219334717))'
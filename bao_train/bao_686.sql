SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'great')   AND t.create_at between '2017-09-30 19:04:18' and '2017-10-01 19:04:18'   AND t.coordinate <@ box '((-108.8944376,32.7518182),(-79.86018759999999,45.0723682))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-06-12 16:13:55' and '2016-07-03 16:13:55'   AND t.coordinate <@ box '((-71.100499878125,43.101608103124995),(-70.646839721875,43.294116696875))'
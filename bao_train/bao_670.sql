SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'manages')   AND t.create_at between '2017-09-15 01:31:35' and '2017-09-16 01:31:35'   AND t.coordinate <@ box '((-97.74826506749633,30.693042733326415),(-97.74737901250367,30.693418726673585))'
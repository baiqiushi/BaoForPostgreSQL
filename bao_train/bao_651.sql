SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fastcasual')   AND t.create_at between '2017-08-24 22:04:17' and '2017-08-26 22:04:17'   AND t.coordinate <@ box '((-77.52381255,39.988112349999994),(-70.26525004999999,43.06824985))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'happy')   AND t.create_at between '2016-01-13 10:38:05' and '2016-01-23 10:38:05'   AND t.coordinate <@ box '((-92.34048565499268,42.52627350665283),(-92.33871354500732,42.52702549334717))'
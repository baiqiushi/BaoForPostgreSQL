SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'barrel')   AND t.create_at between '2015-12-17 20:06:18' and '2016-01-07 20:06:18'   AND t.coordinate <@ box '((-74.49149815976563,39.347585012890626),(-74.43479064023438,39.37164858710937))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sigh')   AND t.create_at between '2016-01-14 22:36:11' and '2016-01-19 22:36:11'   AND t.coordinate <@ box '((-76.789581878125,39.190237103125),(-76.335921721875,39.382745696875006))'
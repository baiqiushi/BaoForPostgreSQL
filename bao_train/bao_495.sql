SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'get')   AND t.create_at between '2017-03-08 22:04:31' and '2017-03-10 22:04:31'   AND t.coordinate <@ box '((-116.28226828994141,43.60146311322266),(-116.26809141005859,43.607479006777346))'
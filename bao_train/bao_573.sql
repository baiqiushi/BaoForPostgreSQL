SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'available')   AND t.create_at between '2017-05-13 17:54:35' and '2017-06-25 17:54:35'   AND t.coordinate <@ box '((-77.48108605499267,37.55162400665283),(-77.47931394500732,37.55237599334717))'
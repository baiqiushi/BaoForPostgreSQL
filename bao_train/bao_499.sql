SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'friend')   AND t.create_at between '2017-03-12 01:38:04' and '2017-03-13 01:38:04'   AND t.coordinate <@ box '((-93.550265838125,44.780993593125),(-93.09660568187499,44.973502186875))'
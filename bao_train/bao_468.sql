SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'work')   AND t.create_at between '2017-02-19 17:57:17' and '2017-03-01 17:57:17'   AND t.coordinate <@ box '((-102.37266685624999,34.78037230625),(-101.46534654375,35.16538949375))'
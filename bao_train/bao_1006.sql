SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'luv')   AND t.create_at between '2018-11-21 00:54:00' and '2018-11-22 00:54:00'   AND t.coordinate <@ box '((-98.50088605499268,29.416324006652832),(-98.49911394500732,29.417075993347165))'
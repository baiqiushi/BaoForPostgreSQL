SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pessoas')   AND t.create_at between '2019-07-17 19:00:54' and '2019-08-29 19:00:54'   AND t.coordinate <@ box '((-100.83425,29.979449999999996),(-42.76575,54.620549999999994))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'maine')   AND t.create_at between '2018-07-25 19:13:39' and '2019-07-07 19:13:39'   AND t.coordinate <@ box '((-69.05670751953124,45.47593642578125),(-68.94329248046876,45.52406357421875))'
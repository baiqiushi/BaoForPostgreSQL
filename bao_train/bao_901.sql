SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'del')   AND t.create_at between '2018-07-04 00:53:45' and '2018-07-05 00:53:45'   AND t.coordinate <@ box '((-80.38267502749633,25.847413703326414),(-80.38178897250367,25.847789696673583))'
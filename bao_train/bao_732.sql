SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'centre')   AND t.create_at between '2017-11-17 09:35:35' and '2017-12-08 09:35:35'   AND t.coordinate <@ box '((-96.4218133125,29.387596612499998),(-94.6071726875,30.1576309875))'
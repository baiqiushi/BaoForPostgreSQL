SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wtf')   AND t.create_at between '2018-11-09 21:24:29' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-73.15805893953124,41.22569228578125),(-73.04464390046876,41.27381943421875))'
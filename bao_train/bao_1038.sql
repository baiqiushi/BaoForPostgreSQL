SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'alaska')   AND t.create_at between '2019-02-07 16:06:23' and '2019-02-12 16:06:23'   AND t.coordinate <@ box '((-77.06965977976562,38.83991516289063),(-77.01295226023437,38.86397873710937))'
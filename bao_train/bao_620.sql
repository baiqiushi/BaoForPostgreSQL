SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'government')   AND t.create_at between '2017-07-13 12:06:11' and '2017-07-14 12:06:11'   AND t.coordinate <@ box '((-88.94718639999999,38.4237909),(-74.4300614,44.5840659))'
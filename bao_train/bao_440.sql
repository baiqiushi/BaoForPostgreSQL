SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sarah')   AND t.create_at between '2017-01-29 04:05:29' and '2017-02-19 04:05:29'   AND t.coordinate <@ box '((-77.49788125,41.37163125),(-70.23931875,44.45176875000001))'
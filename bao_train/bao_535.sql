SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'current')   AND t.create_at between '2017-04-15 13:25:20' and '2017-05-06 13:25:20'   AND t.coordinate <@ box '((-118.15011075687408,33.9699530008316),(-118.14988924312593,33.970046999168396))'
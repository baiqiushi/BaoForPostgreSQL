SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sumersault')   AND t.create_at between '2016-08-01 00:32:10' and '2016-08-22 00:32:10'   AND t.coordinate <@ box '((-77.51556015624999,38.70969140625),(-76.60823984375,39.09470859375))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cardiooooo')   AND t.create_at between '2016-12-04 15:33:02' and '2016-12-09 15:33:02'   AND t.coordinate <@ box '((-73.96536393749633,40.75930236332642),(-73.96447788250367,40.75967835667358))'
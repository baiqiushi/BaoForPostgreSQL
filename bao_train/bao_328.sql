SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'finish')   AND t.create_at between '2016-10-08 00:17:04' and '2016-10-09 00:17:04'   AND t.coordinate <@ box '((-77.66707065,40.57387841),(-63.14994565000001,46.73415341))'
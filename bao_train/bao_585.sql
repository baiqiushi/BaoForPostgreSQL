SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gate')   AND t.create_at between '2017-05-27 22:12:48' and '2017-05-28 22:12:48'   AND t.coordinate <@ box '((-124.08877210998536,40.86856801330567),(-124.08522789001465,40.870071986694334))'
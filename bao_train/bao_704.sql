SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'boulevard')   AND t.create_at between '2017-10-27 13:20:41' and '2017-11-01 13:20:41'   AND t.coordinate <@ box '((-74.30896015625,40.56659240625),(-73.40163984375,40.95160959375))'
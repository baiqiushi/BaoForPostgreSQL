SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'got')   AND t.create_at between '2018-02-25 15:42:02' and '2018-03-02 15:42:02'   AND t.coordinate <@ box '((-77.44281210998535,43.10568801330567),(-77.43926789001465,43.10719198669433))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'guacamole')   AND t.create_at between '2016-07-24 23:46:01' and '2016-07-29 23:46:01'   AND t.coordinate <@ box '((-77.27733125,39.116131249999995),(-70.01876874999999,42.19626875))'
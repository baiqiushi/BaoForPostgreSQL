SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2017-11-30 14:24:40' and '2017-12-01 14:24:40'   AND t.coordinate <@ box '((-73.94134080998535,42.81349121330567),(-73.93779659001464,42.81499518669433))'
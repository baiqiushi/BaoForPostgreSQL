SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'church')   AND t.create_at between '2017-07-30 12:14:36' and '2017-10-24 12:14:36'   AND t.coordinate <@ box '((-85.46643548749633,32.584911323326416),(-85.46554943250366,32.58528731667358))'
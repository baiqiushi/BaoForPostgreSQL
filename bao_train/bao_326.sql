SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'temperature')   AND t.create_at between '2016-10-07 09:54:55' and '2016-10-08 09:54:55'   AND t.coordinate <@ box '((-115.25044302749633,36.10981200332642),(-115.24955697250367,36.11018799667358))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'busy')   AND t.create_at between '2016-04-01 14:48:19' and '2016-04-03 14:48:19'   AND t.coordinate <@ box '((-109.2691972,13.6853895),(-51.20069719999999,38.3264895))'
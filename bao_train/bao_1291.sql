SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hometownbuffet')   AND t.create_at between '2016-05-05 20:23:30' and '2016-06-17 20:23:30'   AND t.coordinate <@ box '((-117.99966627906251,33.7913601615625),(-117.7728362009375,33.887614458437504))'
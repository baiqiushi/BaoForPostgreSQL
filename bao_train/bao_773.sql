SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wb')   AND t.create_at between '2017-12-22 15:43:36' and '2018-02-03 15:43:36'   AND t.coordinate <@ box '((-77.5552250390625,42.9699028515625),(-77.3283949609375,43.066157148437505))'
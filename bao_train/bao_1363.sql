SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'butcher')   AND t.create_at between '2016-07-03 17:00:48' and '2016-08-15 17:00:48'   AND t.coordinate <@ box '((-84.74557727,35.95978712),(-70.22845227,42.12006212))'
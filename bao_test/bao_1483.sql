SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'winter')   AND t.create_at between '2019-02-10 11:04:19' and '2019-02-15 11:04:19'   AND t.coordinate <@ box '((-127.0805625,36.4469625),(-112.5634375,42.6072375))'
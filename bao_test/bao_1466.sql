SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2019-01-11 18:13:25' and '2019-07-03 18:13:25'   AND t.coordinate <@ box '((-97.33631755976562,31.640181512890624),(-97.27961004023437,31.664245087109375))'
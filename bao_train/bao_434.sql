SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'staten')   AND t.create_at between '2017-01-16 21:55:34' and '2017-01-21 21:55:34'   AND t.coordinate <@ box '((-103.04808915,28.38079739),(-44.979589149999995,53.02189739000001))'
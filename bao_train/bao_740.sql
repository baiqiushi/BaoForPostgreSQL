SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'coogs')   AND t.create_at between '2017-11-24 23:35:57' and '2018-11-06 23:35:57'   AND t.coordinate <@ box '((-95.40587418953125,29.69788086578125),(-95.29245915046876,29.746008014218752))'
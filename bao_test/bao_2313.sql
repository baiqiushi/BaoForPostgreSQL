SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tx')   AND t.create_at between '2017-03-22 11:49:22' and '2018-03-04 11:49:22'   AND t.coordinate <@ box '((-126.78156739,17.90054249),(-68.71306739,42.54164249))'
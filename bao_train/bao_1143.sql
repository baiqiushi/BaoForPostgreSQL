SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'want')   AND t.create_at between '2018-01-22 17:05:22' and '2018-01-23 17:05:22'   AND t.coordinate <@ box '((-75.66219571953124,39.93660072578125),(-75.54878068046875,39.98472787421875))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'black')   AND t.create_at between '2016-12-04 19:57:14' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-79.96178605499267,40.46942400665283),(-79.96001394500732,40.47017599334717))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'labor')   AND t.create_at between '2016-01-28 13:05:09' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-73.95088605499268,40.64962400665283),(-73.94911394500733,40.65037599334717))'
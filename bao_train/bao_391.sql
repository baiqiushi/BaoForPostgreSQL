SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'temperature')   AND t.create_at between '2016-12-11 01:26:01' and '2018-11-05 01:26:01'   AND t.coordinate <@ box '((-87.76088605499268,41.70962400665283),(-87.75911394500733,41.71037599334717))'
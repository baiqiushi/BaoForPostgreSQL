SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'shout')   AND t.create_at between '2018-09-25 00:55:48' and '2018-11-07 00:55:48'   AND t.coordinate <@ box '((-117.91101605499267,33.83396400665283),(-117.90924394500732,33.83471599334717))'
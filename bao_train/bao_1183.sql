SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'full')   AND t.create_at between '2015-12-22 23:10:19' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-86.77396421374817,36.15907420166321),(-86.77352118625183,36.1592621983368))'
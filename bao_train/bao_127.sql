SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'think')   AND t.create_at between '2016-04-04 17:46:52' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-80.925430078125,39.974045703125),(-80.471769921875,40.166554296875006))'
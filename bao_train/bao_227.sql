SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'boyle')   AND t.create_at between '2016-07-09 10:45:14' and '2017-06-21 10:45:14'   AND t.coordinate <@ box '((-80.016765428125,35.971752593125),(-79.56310527187499,36.164261186875))'
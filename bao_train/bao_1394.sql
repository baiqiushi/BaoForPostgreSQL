SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'branch')   AND t.create_at between '2016-07-26 22:08:47' and '2016-08-16 22:08:47'   AND t.coordinate <@ box '((-81.49431901953125,28.46848292578125),(-81.38090398046876,28.51661007421875))'
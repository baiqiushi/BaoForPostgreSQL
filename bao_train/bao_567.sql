SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'blueberry')   AND t.create_at between '2017-05-09 21:42:05' and '2017-06-21 21:42:05'   AND t.coordinate <@ box '((-75.06400751953124,40.07763642578125),(-74.95059248046876,40.12576357421875))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'could')   AND t.create_at between '2017-08-24 13:44:17' and '2017-08-25 13:44:17'   AND t.coordinate <@ box '((-73.47182891953125,40.76936862578125),(-73.35841388046876,40.81749577421875))'
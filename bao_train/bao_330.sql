SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'opportunity')   AND t.create_at between '2016-10-08 15:35:09' and '2016-10-10 15:35:09'   AND t.coordinate <@ box '((-73.99512143994141,40.74536205322266),(-73.98094456005859,40.751377946777346))'
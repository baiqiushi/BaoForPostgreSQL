SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'might')   AND t.create_at between '2017-11-13 16:45:03' and '2017-12-04 16:45:03'   AND t.coordinate <@ box '((-81.71926015625,29.657791406250002),(-80.81193984375001,30.04280859375))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'holiday')   AND t.create_at between '2018-12-16 03:43:31' and '2019-06-07 03:43:31'   AND t.coordinate <@ box '((-87.79425543994141,41.82242005322266),(-87.78007856005858,41.82843594677735))'
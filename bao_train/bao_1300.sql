SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'redrobincareers')   AND t.create_at between '2016-05-14 01:31:50' and '2016-05-15 01:31:50'   AND t.coordinate <@ box '((-121.54460224,32.24815629),(-114.28603973999999,35.328293790000004))'
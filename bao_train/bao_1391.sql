SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ranch')   AND t.create_at between '2016-07-24 01:09:30' and '2016-07-25 01:09:30'   AND t.coordinate <@ box '((-125.94303188,20.660580999999997),(-67.87453188,45.301681))'
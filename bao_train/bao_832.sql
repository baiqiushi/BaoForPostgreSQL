SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2018-03-03 18:47:14' and '2018-03-13 18:47:14'   AND t.coordinate <@ box '((-96.84104575499268,32.81171500665283),(-96.83927364500732,32.81246699334717))'
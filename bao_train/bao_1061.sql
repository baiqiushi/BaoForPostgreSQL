SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'happen')   AND t.create_at between '2019-03-22 04:18:10' and '2019-05-04 04:18:10'   AND t.coordinate <@ box '((-118.50565043994142,34.00541405322266),(-118.4914735600586,34.01142994677735))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'last')   AND t.create_at between '2016-12-31 18:52:01' and '2017-01-01 18:52:01'   AND t.coordinate <@ box '((-86.15818243994141,39.77125700322266),(-86.14400556005859,39.77727289677735))'
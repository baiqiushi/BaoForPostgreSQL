SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'west')   AND t.create_at between '2017-06-25 09:32:05' and '2017-06-26 09:32:05'   AND t.coordinate <@ box '((-80.84788185994141,35.22183182322266),(-80.83370498005858,35.22784771677735))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'dreaming')   AND t.create_at between '2018-05-03 20:52:28' and '2018-05-05 20:52:28'   AND t.coordinate <@ box '((-73.98453323994141,40.72428145322265),(-73.97035636005859,40.73029734677734))'
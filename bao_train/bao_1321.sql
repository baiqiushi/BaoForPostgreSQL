SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2016-06-06 21:07:02' and '2016-08-31 21:07:02'   AND t.coordinate <@ box '((-85.8937989199707,38.95771612661133),(-85.8867104800293,38.960724073388675))'
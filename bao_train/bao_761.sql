SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2017-12-14 22:21:04' and '2018-01-04 22:21:04'   AND t.coordinate <@ box '((-122.26611003994141,47.45479745322265),(-122.25193316005858,47.46081334677734))'
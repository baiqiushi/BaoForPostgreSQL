SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pubgrub')   AND t.create_at between '2016-01-30 07:44:09' and '2016-04-25 07:44:09'   AND t.coordinate <@ box '((-122.88358007812501,45.475225703125),(-122.429919921875,45.667734296875004))'
SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2017-11-16 03:35:39' and '2017-11-26 03:35:39'   AND t.coordinate <@ box '((-122.18116725499267,37.38096840665283),(-122.17939514500732,37.38172039334717))'
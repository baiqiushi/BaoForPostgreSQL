SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'delay')   AND t.create_at between '2019-02-05 16:03:39' and '2019-05-02 16:03:39'   AND t.coordinate <@ box '((-122.996830078125,45.182995703124995),(-122.54316992187499,45.375504296875))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'scandalous')   AND t.create_at between '2019-05-05 23:49:07' and '2019-05-06 23:49:07'   AND t.coordinate <@ box '((-122.04281727374817,37.9190371316632),(-122.04237424625182,37.91922512833679))'
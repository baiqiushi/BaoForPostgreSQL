SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'manning')   AND t.create_at between '2016-02-08 03:24:54' and '2017-01-20 03:24:54'   AND t.coordinate <@ box '((-122.47887559624999,38.063629436250004),(-121.57155528375,38.44864662375))'
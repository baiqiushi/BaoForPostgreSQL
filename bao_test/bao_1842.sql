SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'xian')   AND t.create_at between '2016-05-22 01:21:54' and '2017-05-04 01:21:54'   AND t.coordinate <@ box '((-122.85885315624999,37.60410440625),(-121.95153284375,37.98912159375))'
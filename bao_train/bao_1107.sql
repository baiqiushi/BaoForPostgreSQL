SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'humidity')   AND t.create_at between '2017-12-26 23:38:02' and '2018-03-22 23:38:02'   AND t.coordinate <@ box '((-122.19011075687408,47.6099530008316),(-122.18988924312592,47.6100469991684))'
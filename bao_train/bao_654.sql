SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'rebels')   AND t.create_at between '2017-01-31 12:48:35' and '2017-02-02 12:48:35'   AND t.coordinate <@ box '((-122.80397535976562,45.49441931289063),(-122.74726784023437,45.51848288710937))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'newmusic')   AND t.create_at between '2018-03-17 23:33:16' and '2018-04-07 23:33:16'   AND t.coordinate <@ box '((-91.0056535,39.19679045),(-76.4885285,45.35706545))'
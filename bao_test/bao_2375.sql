SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hulkstatusinprogress')   AND t.create_at between '2017-04-22 10:49:29' and '2018-04-04 10:49:29'   AND t.coordinate <@ box '((-77.81434915624999,37.33626040625),(-76.90702884375,37.721277593749996))'
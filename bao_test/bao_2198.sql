SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sangre')   AND t.create_at between '2016-12-29 03:29:08' and '2017-06-20 03:29:08'   AND t.coordinate <@ box '((-95.12817210998536,29.545248013305663),(-95.12462789001465,29.546751986694336))'
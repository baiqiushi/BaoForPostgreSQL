SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'take')   AND t.create_at between '2019-03-12 13:37:13' and '2019-03-17 13:37:13'   AND t.coordinate <@ box '((-123.840892625,36.202015625),(-120.211611375,37.742084375000005))'
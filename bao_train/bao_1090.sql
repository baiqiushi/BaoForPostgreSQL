SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tap')   AND t.create_at between '2017-12-16 20:46:27' and '2017-12-17 20:46:27'   AND t.coordinate <@ box '((-74.03222210998536,40.735428013305665),(-74.02867789001465,40.73693198669433))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bros')   AND t.create_at between '2016-04-16 00:25:25' and '2016-04-21 00:25:25'   AND t.coordinate <@ box '((-118.4716384090625,34.0240071415625),(-118.2448083309375,34.1202614384375))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'symphony')   AND t.create_at between '2016-12-05 22:28:07' and '2017-03-01 22:28:07'   AND t.coordinate <@ box '((-88.36013375625,42.84639390625),(-87.45281344375,43.23141109375))'
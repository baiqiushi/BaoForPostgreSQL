SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'thoracic')   AND t.create_at between '2015-12-16 12:03:51' and '2016-01-28 12:03:51'   AND t.coordinate <@ box '((-71.3090260390625,42.4566895515625),(-71.0821959609375,42.5529438484375))'
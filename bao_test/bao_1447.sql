SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'check')   AND t.create_at between '2018-12-07 23:06:11' and '2018-12-17 23:06:11'   AND t.coordinate <@ box '((-84.80142940998536,33.37991961330567),(-84.79788519001465,33.38142358669433))'
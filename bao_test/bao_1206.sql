SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jeep')   AND t.create_at between '2018-03-11 13:56:56' and '2018-03-21 13:56:56'   AND t.coordinate <@ box '((-74.726830078125,39.903745703125),(-74.273169921875,40.096254296875))'
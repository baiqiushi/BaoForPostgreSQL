SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ohcurlyone')   AND t.create_at between '2018-03-23 03:22:08' and '2018-05-05 03:22:08'   AND t.coordinate <@ box '((-74.8748203125,40.392882812500005),(-73.0601796875,41.1629171875))'
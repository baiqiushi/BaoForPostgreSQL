SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tweaking')   AND t.create_at between '2017-08-12 03:27:36' and '2017-11-06 03:27:36'   AND t.coordinate <@ box '((-93.54639031250001,40.9235228125),(-91.7317496875,41.6935571875))'
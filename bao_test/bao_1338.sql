SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2018-08-17 13:56:28' and '2018-11-11 13:56:28'   AND t.coordinate <@ box '((-73.652524478125,41.055039603124996),(-73.19886432187499,41.247548196875))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'peanutbutter')   AND t.create_at between '2016-12-27 21:57:08' and '2017-03-23 21:57:08'   AND t.coordinate <@ box '((-80.69234115,37.36377125),(-73.43377865,40.443908750000006))'
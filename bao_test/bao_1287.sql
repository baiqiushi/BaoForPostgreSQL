SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2018-06-14 16:13:39' and '2018-07-05 16:13:39'   AND t.coordinate <@ box '((-129.4667044,44.4141363),(-114.9495794,50.5744113))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'v')   AND t.create_at between '2017-01-06 07:28:50' and '2017-01-07 07:28:50'   AND t.coordinate <@ box '((-120.173100095,33.210243995),(-116.543818845,34.750312745))'
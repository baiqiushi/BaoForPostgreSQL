SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'registered')   AND t.create_at between '2016-09-16 18:59:36' and '2016-10-07 18:59:36'   AND t.coordinate <@ box '((-82.46334695687408,27.387250800831602),(-82.46312544312592,27.387344799168396))'
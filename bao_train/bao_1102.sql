SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'week')   AND t.create_at between '2017-12-21 03:43:29' and '2018-02-02 03:43:29'   AND t.coordinate <@ box '((-73.98657102749632,40.72633700332642),(-73.98568497250366,40.726712996673584))'
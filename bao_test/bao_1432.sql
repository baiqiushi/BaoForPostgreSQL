SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'new')   AND t.create_at between '2018-11-18 01:23:18' and '2018-11-19 01:23:18'   AND t.coordinate <@ box '((-73.98009231988281,40.75616466644531),(-73.95173856011719,40.76819645355469))'
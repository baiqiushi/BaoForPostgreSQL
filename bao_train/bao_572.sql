SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'amazing')   AND t.create_at between '2016-12-11 00:25:01' and '2016-12-12 00:25:01'   AND t.coordinate <@ box '((-118.23381947988281,34.05816640644531),(-118.20546572011719,34.07019819355469))'
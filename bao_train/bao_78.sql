SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'university')   AND t.create_at between '2016-01-10 22:18:01' and '2016-01-11 22:18:01'   AND t.coordinate <@ box '((-84.53464657988282,39.12399660644531),(-84.5062928201172,39.13602839355469))'
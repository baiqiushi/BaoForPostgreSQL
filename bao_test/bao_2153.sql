SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'seem')   AND t.create_at between '2016-11-19 18:21:56' and '2016-11-21 18:21:56'   AND t.coordinate <@ box '((-75.30843344988281,40.002354326445314),(-75.28007969011719,40.01438611355469))'
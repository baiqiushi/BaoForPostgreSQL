SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2018-03-28 18:32:51' and '2018-05-10 18:32:51'   AND t.coordinate <@ box '((-96.9000953125,35.768964412500004),(-95.08545468749999,36.5389987875))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'remember')   AND t.create_at between '2017-08-18 15:33:49' and '2018-07-31 15:33:49'   AND t.coordinate <@ box '((-84.616110078125,33.684545703124996),(-84.162449921875,33.877054296875))'
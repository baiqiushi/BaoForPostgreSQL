SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'texas')   AND t.create_at between '2017-11-06 20:20:32' and '2017-11-11 20:20:32'   AND t.coordinate <@ box '((-125.83425,20.462749999999996),(-67.76575,45.103849999999994))'
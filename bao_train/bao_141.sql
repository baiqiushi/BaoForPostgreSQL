SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cold')   AND t.create_at between '2016-02-17 22:36:48' and '2016-02-18 22:36:48'   AND t.coordinate <@ box '((-156.69622331499266,20.919539236652835),(-156.69445120500734,20.920291223347167))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'opening')   AND t.create_at between '2017-03-22 20:11:28' and '2017-04-12 20:11:28'   AND t.coordinate <@ box '((-79.06506901953125,38.17801182578125),(-78.95165398046876,38.22613897421875))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'whitman')   AND t.create_at between '2018-07-18 22:30:32' and '2018-07-20 22:30:32'   AND t.coordinate <@ box '((-73.97442955687409,40.6942870208316),(-73.97420804312593,40.6943810191684))'
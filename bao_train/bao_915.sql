SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'far')   AND t.create_at between '2017-08-17 00:51:32' and '2017-08-18 00:51:32'   AND t.coordinate <@ box '((-169.98675699999998,13.662595999999999),(-140.952507,25.983145999999998))'
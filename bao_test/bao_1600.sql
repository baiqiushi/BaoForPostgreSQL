SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'weekendvibes')   AND t.create_at between '2019-07-29 00:20:02' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-73.45961578499268,40.87033446665283),(-73.45784367500733,40.87108645334717))'
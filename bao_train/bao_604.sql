SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nah')   AND t.create_at between '2016-12-30 15:38:36' and '2017-01-04 15:38:36'   AND t.coordinate <@ box '((-94.80364989,30.00134217),(-65.76939988999999,42.32189217))'
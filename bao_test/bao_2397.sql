SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'staff')   AND t.create_at between '2017-05-12 13:32:05' and '2017-11-01 13:32:05'   AND t.coordinate <@ box '((-89.73790405000001,40.44414355),(-82.47934155,43.524281050000006))'
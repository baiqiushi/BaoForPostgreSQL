SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'potrero')   AND t.create_at between '2016-01-20 15:53:24' and '2016-01-25 15:53:24'   AND t.coordinate <@ box '((-136.923527,31.590809),(-107.88927699999999,43.911359))'
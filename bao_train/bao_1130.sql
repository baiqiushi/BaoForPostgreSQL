SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'vmlatces')   AND t.create_at between '2018-01-11 09:04:29' and '2018-01-12 09:04:29'   AND t.coordinate <@ box '((-115.62823524625,35.91718448625),(-114.72091493375001,36.30220167375))'
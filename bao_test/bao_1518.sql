SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'might')   AND t.create_at between '2019-04-13 22:16:04' and '2019-04-18 22:16:04'   AND t.coordinate <@ box '((-121.94805975624999,38.38906330625),(-121.04073944375,38.77408049375))'
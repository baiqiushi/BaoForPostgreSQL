SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ri')   AND t.create_at between '2017-02-22 17:42:33' and '2019-01-17 17:42:33'   AND t.coordinate <@ box '((-75.04211555,40.283920349999995),(-67.78355305,43.36405785))'
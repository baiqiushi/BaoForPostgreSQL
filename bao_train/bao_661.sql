SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wawa')   AND t.create_at between '2017-02-03 15:41:05' and '2017-03-18 15:41:05'   AND t.coordinate <@ box '((-111.56576217,15.046983999999998),(-53.49726217,39.688084))'
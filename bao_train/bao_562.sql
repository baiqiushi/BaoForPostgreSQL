SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'huge')   AND t.create_at between '2016-12-05 14:22:37' and '2016-12-15 14:22:37'   AND t.coordinate <@ box '((-67.906449255,17.683839974999998),(-64.27716800500001,19.223908725))'
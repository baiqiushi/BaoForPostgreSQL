SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fl')   AND t.create_at between '2016-04-08 20:31:37' and '2016-04-10 20:31:37'   AND t.coordinate <@ box '((-81.64341251988282,30.167484796445315),(-81.6150587601172,30.179516583554687))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'whydictatordonmustneverbepresident')   AND t.create_at between '2016-09-17 01:31:13' and '2016-09-22 01:31:13'   AND t.coordinate <@ box '((-97.56953702749634,35.64485300332642),(-97.56865097250368,35.64522899667358))'
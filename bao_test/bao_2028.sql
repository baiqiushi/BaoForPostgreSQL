SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-08-31 18:20:38' and '2016-11-25 18:20:38'   AND t.coordinate <@ box '((-71.49318722749634,41.70187980332642),(-71.49230117250367,41.70225579667358))'
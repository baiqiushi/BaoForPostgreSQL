SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'met')   AND t.create_at between '2016-04-16 22:09:12' and '2016-05-07 22:09:12'   AND t.coordinate <@ box '((-115.17561402749634,36.12137800332642),(-115.17472797250367,36.12175399667358))'
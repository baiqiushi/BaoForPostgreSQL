SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pink')   AND t.create_at between '2017-02-25 16:16:00' and '2017-05-22 16:16:00'   AND t.coordinate <@ box '((-80.12272752749634,25.817199643326415),(-80.12184147250368,25.817575636673585))'
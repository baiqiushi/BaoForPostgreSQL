SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pennsylvania')   AND t.create_at between '2019-05-28 15:01:26' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-75.89668605499267,41.01932400665283),(-75.89491394500732,41.02007599334717))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'check')   AND t.create_at between '2016-11-22 20:51:55' and '2017-02-16 20:51:55'   AND t.coordinate <@ box '((-78.86980155499268,38.44919280665283),(-78.86802944500732,38.44994479334717))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tall')   AND t.create_at between '2016-07-16 13:18:03' and '2017-06-28 13:18:03'   AND t.coordinate <@ box '((-77.85691557976563,42.15828133289063),(-77.80020806023438,42.182344907109375))'
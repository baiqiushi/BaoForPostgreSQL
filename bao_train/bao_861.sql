SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'upholstery')   AND t.create_at between '2017-06-28 16:34:42' and '2017-06-30 16:34:42'   AND t.coordinate <@ box '((-84.48829985906251,33.7694883415625),(-84.2614697809375,33.8657426384375))'
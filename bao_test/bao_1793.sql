SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'april')   AND t.create_at between '2016-04-15 17:34:24' and '2016-04-25 17:34:24'   AND t.coordinate <@ box '((-73.90156535499267,40.77705540665283),(-73.89979324500732,40.77780739334717))'
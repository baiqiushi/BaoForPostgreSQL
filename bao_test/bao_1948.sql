SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'thebierbrewery')   AND t.create_at between '2016-07-12 20:59:52' and '2016-10-06 20:59:52'   AND t.coordinate <@ box '((-86.46036015624999,39.66329140625),(-85.55303984375,40.04830859375))'
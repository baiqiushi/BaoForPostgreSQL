SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bakery')   AND t.create_at between '2016-07-06 03:25:56' and '2016-07-16 03:25:56'   AND t.coordinate <@ box '((-66.05738972997071,18.45205806661133),(-66.0503012900293,18.455066013388674))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'family')   AND t.create_at between '2017-04-26 15:45:18' and '2017-07-21 15:45:18'   AND t.coordinate <@ box '((-87.58008125,41.88083125),(-80.32151875,44.960968750000006))'
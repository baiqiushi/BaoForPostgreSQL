SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'conklin')   AND t.create_at between '2016-04-16 15:13:20' and '2016-05-29 15:13:20'   AND t.coordinate <@ box '((-89.57602125000001,41.65124125),(-82.31745875,44.731378750000005))'
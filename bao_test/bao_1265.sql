SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'woof')   AND t.create_at between '2018-05-04 18:16:41' and '2018-06-16 18:16:41'   AND t.coordinate <@ box '((-103.028724,28.401737),(-44.960224,53.042837000000006))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'saturday')   AND t.create_at between '2017-03-27 07:25:21' and '2017-04-06 07:25:21'   AND t.coordinate <@ box '((-123.63398321000001,37.68752798),(-116.37542071,40.767665480000005))'
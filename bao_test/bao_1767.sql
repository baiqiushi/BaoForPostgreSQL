SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'amc')   AND t.create_at between '2016-03-13 16:31:35' and '2016-04-03 16:31:35'   AND t.coordinate <@ box '((-95.54162382749634,29.952991503326416),(-95.54073777250368,29.953367496673586))'
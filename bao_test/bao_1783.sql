SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'precision')   AND t.create_at between '2016-04-09 14:02:27' and '2016-04-11 14:02:27'   AND t.coordinate <@ box '((-76.94688045687408,38.8422649008316),(-76.94665894312593,38.842358899168396))'
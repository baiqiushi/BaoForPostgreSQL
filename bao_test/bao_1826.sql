SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'finale')   AND t.create_at between '2016-05-09 00:07:42' and '2018-04-03 00:07:42'   AND t.coordinate <@ box '((-81.69265817998536,41.49974954330567),(-81.68911396001465,41.501253516694334))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'blacklivesmatter')   AND t.create_at between '2017-04-20 15:52:19' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-77.06505375976562,38.88306821289063),(-77.00834624023437,38.90713178710937))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2019-01-12 23:52:06' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-157.87251017988282,21.300928506445313),(-157.84415642011717,21.312960293554685))'
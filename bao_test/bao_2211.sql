SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'another')   AND t.create_at between '2017-01-04 07:30:53' and '2017-01-06 07:30:53'   AND t.coordinate <@ box '((-117.92396075749633,33.80896556332642),(-117.92307470250367,33.80934155667358))'
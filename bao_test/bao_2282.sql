SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'immediately')   AND t.create_at between '2017-02-17 14:41:01' and '2017-02-19 14:41:01'   AND t.coordinate <@ box '((-113.5955855,27.078950799999998),(-55.5270855,51.720050799999996))'
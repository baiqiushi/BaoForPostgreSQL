SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lexhotel')   AND t.create_at between '2016-08-04 22:33:58' and '2016-10-29 22:33:58'   AND t.coordinate <@ box '((-103.017618,28.420408999999996),(-44.949118,53.061509))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'drew')   AND t.create_at between '2017-02-26 03:19:19' and '2017-02-27 03:19:19'   AND t.coordinate <@ box '((-90.18586210998535,38.632098013305665),(-90.18231789001464,38.63360198669433))'
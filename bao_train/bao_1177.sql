SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'practice')   AND t.create_at between '2018-02-21 19:35:58' and '2019-02-03 19:35:58'   AND t.coordinate <@ box '((-90.20294841997071,38.62549852661133),(-90.1958599800293,38.628506473388676))'
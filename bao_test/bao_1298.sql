SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'globe')   AND t.create_at between '2018-06-30 02:54:50' and '2018-07-05 02:54:50'   AND t.coordinate <@ box '((-126.11700984,20.430803190000002),(-68.04850984,45.07190319))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'snow')   AND t.create_at between '2016-01-23 06:01:00' and '2016-03-06 06:01:00'   AND t.coordinate <@ box '((-77.78708843994141,39.05699205322266),(-77.77291156005859,39.06300794677735))'
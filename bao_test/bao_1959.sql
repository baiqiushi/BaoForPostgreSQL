SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'colour')   AND t.create_at between '2016-07-22 16:37:20' and '2018-06-16 16:37:20'   AND t.coordinate <@ box '((-118.37801843994141,34.08768205322266),(-118.36384156005859,34.09369794677735))'
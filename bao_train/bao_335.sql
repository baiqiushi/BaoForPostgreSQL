SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'maurices')   AND t.create_at between '2016-07-08 18:35:48' and '2016-07-09 18:35:48'   AND t.coordinate <@ box '((-93.44676555625,45.31770490625),(-92.53944524375001,45.70272209375))'
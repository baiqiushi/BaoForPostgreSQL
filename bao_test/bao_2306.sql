SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'inches')   AND t.create_at between '2017-03-12 12:29:51' and '2017-04-02 12:29:51'   AND t.coordinate <@ box '((-83.1842483690625,32.9910395215625),(-82.9574182909375,33.0872938184375))'
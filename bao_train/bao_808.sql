SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'charlotte')   AND t.create_at between '2017-05-03 19:44:06' and '2017-05-08 19:44:06'   AND t.coordinate <@ box '((-80.9542084590625,35.1767126215625),(-80.7273783809375,35.272966918437504))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2018-05-11 17:44:24' and '2018-05-12 17:44:24'   AND t.coordinate <@ box '((-98.22389675000001,37.51178295),(-90.96533425,40.59192045))'
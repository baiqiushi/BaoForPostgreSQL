SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-02-07 19:58:33' and '2016-02-08 19:58:33'   AND t.coordinate <@ box '((-118.42482025976562,34.00909061289063),(-118.36811274023438,34.033154187109375))'
SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2017-01-09 22:24:22' and '2017-01-11 22:24:22'   AND t.coordinate <@ box '((-87.64617220998535,41.932554313305666),(-87.64262799001465,41.93405828669433))'
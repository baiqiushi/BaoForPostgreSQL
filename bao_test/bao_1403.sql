SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'kellyjobs')   AND t.create_at between '2018-10-17 14:29:22' and '2018-10-22 14:29:22'   AND t.coordinate <@ box '((-81.55514015976563,40.58275261289063),(-81.49843264023438,40.606816187109374))'
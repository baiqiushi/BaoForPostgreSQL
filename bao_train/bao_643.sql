SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nowplaying')   AND t.create_at between '2017-01-21 12:41:12' and '2017-04-17 12:41:12'   AND t.coordinate <@ box '((-96.0597184399414,41.23285505322266),(-96.04554156005858,41.23887094677735))'
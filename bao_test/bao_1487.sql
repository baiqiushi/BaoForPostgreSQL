SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'come')   AND t.create_at between '2019-02-16 15:58:26' and '2019-02-17 15:58:26'   AND t.coordinate <@ box '((-122.24315843994141,47.37831205322266),(-122.22898156005859,47.38432794677735))'